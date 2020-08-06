#!/usr/bin/env bash

command=""
case ${1} in
    build)
        command="build"
        ;;
    build-image)
        command="build-image"
        ;;
    push-image)
        command="push-image"
        ;;
    *)
        echo "Error invalid command: use build, build-image or push-image"
     #   exit 1
        ;;
esac

# make command
make ${command}
if [ $? != 0 ]; then
    exit 1
fi
exit 0
