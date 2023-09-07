#!/bin/sh

if ! [ -x "$(command -v ffplay)" ]; then
  echo '"ffplay could not be found! Please install ffmpeg"' >&2
  exit 1
fi

if [ "$#" -lt 3 ]; then
  echo "Too few arguments!" >&2
  echo "USAGE: ./ffmpeg_stream.sh [USER] [PASSWORD] [IP]" >&2
  exit 2
fi

ffplay rtsp://$1:$2@$3:554/Streaming/Channels/101/

exit 0
