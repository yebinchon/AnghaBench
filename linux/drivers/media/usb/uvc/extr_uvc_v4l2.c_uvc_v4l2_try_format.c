
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {scalar_t__ pixelformat; int width; int height; int colorspace; int sizeimage; int bytesperline; int field; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_4__ fmt; } ;
struct uvc_streaming_control {int bmHint; int dwMaxVideoFrameSize; int dwFrameInterval; int bFrameIndex; int bFormatIndex; } ;
struct TYPE_6__ {int dwMaxVideoFrameSize; } ;
struct uvc_streaming {scalar_t__ type; unsigned int nformats; int mutex; TYPE_2__ ctrl; TYPE_1__* dev; struct uvc_format* def_format; struct uvc_format* format; } ;
struct uvc_frame {int wWidth; int wHeight; int dwDefaultFrameInterval; int bFrameIndex; } ;
struct uvc_format {scalar_t__ fcc; unsigned int nframes; int colorspace; int index; struct uvc_frame* frame; } ;
struct TYPE_5__ {int quirks; } ;


 int EINVAL ;
 int UVC_QUIRK_PROBE_EXTRAFIELDS ;
 int UVC_TRACE_FORMAT ;
 int V4L2_FIELD_NONE ;
 int memset (struct uvc_streaming_control*,int ,int) ;
 unsigned int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uvc_probe_video (struct uvc_streaming*,struct uvc_streaming_control*) ;
 int uvc_trace (int ,char*,int,int,...) ;
 int uvc_try_frame_interval (struct uvc_frame*,int) ;
 int uvc_v4l2_get_bytesperline (struct uvc_format*,struct uvc_frame*) ;

__attribute__((used)) static int uvc_v4l2_try_format(struct uvc_streaming *stream,
 struct v4l2_format *fmt, struct uvc_streaming_control *probe,
 struct uvc_format **uvc_format, struct uvc_frame **uvc_frame)
{
 struct uvc_format *format = ((void*)0);
 struct uvc_frame *frame = ((void*)0);
 u16 rw, rh;
 unsigned int d, maxd;
 unsigned int i;
 u32 interval;
 int ret = 0;
 u8 *fcc;

 if (fmt->type != stream->type)
  return -EINVAL;

 fcc = (u8 *)&fmt->fmt.pix.pixelformat;
 uvc_trace(UVC_TRACE_FORMAT, "Trying format 0x%08x (%c%c%c%c): %ux%u.\n",
   fmt->fmt.pix.pixelformat,
   fcc[0], fcc[1], fcc[2], fcc[3],
   fmt->fmt.pix.width, fmt->fmt.pix.height);




 for (i = 0; i < stream->nformats; ++i) {
  format = &stream->format[i];
  if (format->fcc == fmt->fmt.pix.pixelformat)
   break;
 }

 if (i == stream->nformats) {
  format = stream->def_format;
  fmt->fmt.pix.pixelformat = format->fcc;
 }





 rw = fmt->fmt.pix.width;
 rh = fmt->fmt.pix.height;
 maxd = (unsigned int)-1;

 for (i = 0; i < format->nframes; ++i) {
  u16 w = format->frame[i].wWidth;
  u16 h = format->frame[i].wHeight;

  d = min(w, rw) * min(h, rh);
  d = w*h + rw*rh - 2*d;
  if (d < maxd) {
   maxd = d;
   frame = &format->frame[i];
  }

  if (maxd == 0)
   break;
 }

 if (frame == ((void*)0)) {
  uvc_trace(UVC_TRACE_FORMAT, "Unsupported size %ux%u.\n",
    fmt->fmt.pix.width, fmt->fmt.pix.height);
  return -EINVAL;
 }


 interval = frame->dwDefaultFrameInterval;
 uvc_trace(UVC_TRACE_FORMAT, "Using default frame interval %u.%u us "
  "(%u.%u fps).\n", interval/10, interval%10, 10000000/interval,
  (100000000/interval)%10);


 memset(probe, 0, sizeof(*probe));
 probe->bmHint = 1;
 probe->bFormatIndex = format->index;
 probe->bFrameIndex = frame->bFrameIndex;
 probe->dwFrameInterval = uvc_try_frame_interval(frame, interval);
 mutex_lock(&stream->mutex);
 if (stream->dev->quirks & UVC_QUIRK_PROBE_EXTRAFIELDS)
  probe->dwMaxVideoFrameSize =
   stream->ctrl.dwMaxVideoFrameSize;


 ret = uvc_probe_video(stream, probe);
 mutex_unlock(&stream->mutex);
 if (ret < 0)
  goto done;

 fmt->fmt.pix.width = frame->wWidth;
 fmt->fmt.pix.height = frame->wHeight;
 fmt->fmt.pix.field = V4L2_FIELD_NONE;
 fmt->fmt.pix.bytesperline = uvc_v4l2_get_bytesperline(format, frame);
 fmt->fmt.pix.sizeimage = probe->dwMaxVideoFrameSize;
 fmt->fmt.pix.colorspace = format->colorspace;

 if (uvc_format != ((void*)0))
  *uvc_format = format;
 if (uvc_frame != ((void*)0))
  *uvc_frame = frame;

done:
 return ret;
}
