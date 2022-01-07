
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct v4l2_frmsizeenum {scalar_t__ pixel_format; unsigned int index; TYPE_1__ discrete; int type; } ;
struct uvc_streaming {unsigned int nformats; struct uvc_format* format; } ;
struct uvc_frame {scalar_t__ wWidth; scalar_t__ wHeight; } ;
struct uvc_format {scalar_t__ fcc; unsigned int nframes; struct uvc_frame* frame; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;

__attribute__((used)) static int uvc_ioctl_enum_framesizes(struct file *file, void *fh,
         struct v4l2_frmsizeenum *fsize)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;
 struct uvc_format *format = ((void*)0);
 struct uvc_frame *frame = ((void*)0);
 unsigned int index;
 unsigned int i;


 for (i = 0; i < stream->nformats; i++) {
  if (stream->format[i].fcc == fsize->pixel_format) {
   format = &stream->format[i];
   break;
  }
 }
 if (format == ((void*)0))
  return -EINVAL;


 for (i = 0, index = 0; i < format->nframes; i++) {
  if (frame && frame->wWidth == format->frame[i].wWidth &&
      frame->wHeight == format->frame[i].wHeight)
   continue;
  frame = &format->frame[i];
  if (index == fsize->index)
   break;
  index++;
 }

 if (i == format->nframes)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = frame->wWidth;
 fsize->discrete.height = frame->wHeight;
 return 0;
}
