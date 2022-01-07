
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int nb_invalid; } ;
struct TYPE_7__ {TYPE_1__ frame; } ;
struct uvc_streaming {int last_fid; scalar_t__ sequence; TYPE_3__* dev; TYPE_2__ stats; } ;
struct TYPE_9__ {int timestamp; } ;
struct TYPE_10__ {TYPE_4__ vb2_buf; scalar_t__ sequence; int field; } ;
struct uvc_buffer {int error; scalar_t__ state; scalar_t__ bytesused; TYPE_5__ buf; } ;
struct TYPE_8__ {int quirks; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENODATA ;
 scalar_t__ UVC_BUF_STATE_ACTIVE ;
 scalar_t__ UVC_BUF_STATE_READY ;
 int UVC_QUIRK_STREAM_NO_FID ;
 int const UVC_STREAM_EOF ;
 int const UVC_STREAM_ERR ;
 int const UVC_STREAM_FID ;
 int UVC_TRACE_FRAME ;
 int V4L2_FIELD_NONE ;
 int ktime_to_ns (int ) ;
 int uvc_trace (int ,char*) ;
 int uvc_video_clock_decode (struct uvc_streaming*,struct uvc_buffer*,int const*,int) ;
 int uvc_video_get_time () ;
 int uvc_video_stats_decode (struct uvc_streaming*,int const*,int) ;
 int uvc_video_stats_update (struct uvc_streaming*) ;

__attribute__((used)) static int uvc_video_decode_start(struct uvc_streaming *stream,
  struct uvc_buffer *buf, const u8 *data, int len)
{
 u8 fid;






 if (len < 2 || data[0] < 2 || data[0] > len) {
  stream->stats.frame.nb_invalid++;
  return -EINVAL;
 }

 fid = data[1] & UVC_STREAM_FID;




 if (stream->last_fid != fid) {
  stream->sequence++;
  if (stream->sequence)
   uvc_video_stats_update(stream);
 }

 uvc_video_clock_decode(stream, buf, data, len);
 uvc_video_stats_decode(stream, data, len);




 if (buf == ((void*)0)) {
  stream->last_fid = fid;
  return -ENODATA;
 }


 if (data[1] & UVC_STREAM_ERR) {
  uvc_trace(UVC_TRACE_FRAME, "Marking buffer as bad (error bit "
     "set).\n");
  buf->error = 1;
 }
 if (buf->state != UVC_BUF_STATE_ACTIVE) {
  if (fid == stream->last_fid) {
   uvc_trace(UVC_TRACE_FRAME, "Dropping payload (out of "
    "sync).\n");
   if ((stream->dev->quirks & UVC_QUIRK_STREAM_NO_FID) &&
       (data[1] & UVC_STREAM_EOF))
    stream->last_fid ^= UVC_STREAM_FID;
   return -ENODATA;
  }

  buf->buf.field = V4L2_FIELD_NONE;
  buf->buf.sequence = stream->sequence;
  buf->buf.vb2_buf.timestamp = ktime_to_ns(uvc_video_get_time());


  buf->state = UVC_BUF_STATE_ACTIVE;
 }
 if (fid != stream->last_fid && buf->bytesused != 0) {
  uvc_trace(UVC_TRACE_FRAME, "Frame complete (FID bit "
    "toggled).\n");
  buf->state = UVC_BUF_STATE_READY;
  return -EAGAIN;
 }

 stream->last_fid = fid;

 return data[0];
}
