ROM alpine/git
RUN apk update && \
    apk add --no-cache openrc curl docker bash && \
    rc-update add docker boot

SHELL ["/bin/bash", "-c"]
RUN curl -L "https://tuf.werf.io/targets/releases/1.2.268/linux-amd64/bin/werf" -o /usr/local/bin/werf && \
    chmod +x /usr/local/bin/werf

ENTRYPOINT ["/usr/local/bin/werf"]
