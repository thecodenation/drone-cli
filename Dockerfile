FROM golang:1.12-alpine
RUN apk update \
    && apk add curl \
    && curl -L https://github.com/drone/drone-cli/releases/download/v1.0.7/drone_linux_amd64.tar.gz | tar zx \
    && install -t /usr/local/bin drone \
    && apk del curl