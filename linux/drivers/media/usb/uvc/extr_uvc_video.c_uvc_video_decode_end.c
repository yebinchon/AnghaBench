
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uvc_streaming {int last_fid; TYPE_1__* dev; } ;
struct uvc_buffer {scalar_t__ bytesused; int state; } ;
struct TYPE_2__ {int quirks; } ;


 int UVC_BUF_STATE_READY ;
 int UVC_QUIRK_STREAM_NO_FID ;
 int const UVC_STREAM_EOF ;
 int UVC_STREAM_FID ;
 int UVC_TRACE_FRAME ;
 int uvc_trace (int ,char*) ;

__attribute__((used)) static void uvc_video_decode_end(struct uvc_streaming *stream,
  struct uvc_buffer *buf, const u8 *data, int len)
{

 if (data[1] & UVC_STREAM_EOF && buf->bytesused != 0) {
  uvc_trace(UVC_TRACE_FRAME, "Frame complete (EOF found).\n");
  if (data[0] == len)
   uvc_trace(UVC_TRACE_FRAME, "EOF in empty payload.\n");
  buf->state = UVC_BUF_STATE_READY;
  if (stream->dev->quirks & UVC_QUIRK_STREAM_NO_FID)
   stream->last_fid ^= UVC_STREAM_FID;
 }
}
