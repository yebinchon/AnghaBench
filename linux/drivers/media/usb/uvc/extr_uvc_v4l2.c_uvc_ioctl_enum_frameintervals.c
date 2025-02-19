
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int denominator; int numerator; } ;
struct TYPE_8__ {int denominator; int numerator; } ;
struct TYPE_7__ {int denominator; int numerator; } ;
struct TYPE_10__ {TYPE_4__ step; TYPE_3__ max; TYPE_2__ min; } ;
struct TYPE_6__ {int denominator; int numerator; } ;
struct v4l2_frmivalenum {scalar_t__ pixel_format; unsigned int index; scalar_t__ width; scalar_t__ height; TYPE_5__ stepwise; int type; TYPE_1__ discrete; } ;
struct uvc_streaming {unsigned int nformats; struct uvc_format* format; } ;
struct uvc_frame {scalar_t__ wWidth; scalar_t__ wHeight; int * dwFrameInterval; scalar_t__ bFrameIntervalType; } ;
struct uvc_format {scalar_t__ fcc; unsigned int nframes; struct uvc_frame* frame; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int V4L2_FRMIVAL_TYPE_STEPWISE ;
 int uvc_simplify_fraction (int *,int*,int,int) ;

__attribute__((used)) static int uvc_ioctl_enum_frameintervals(struct file *file, void *fh,
      struct v4l2_frmivalenum *fival)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;
 struct uvc_format *format = ((void*)0);
 struct uvc_frame *frame = ((void*)0);
 unsigned int nintervals;
 unsigned int index;
 unsigned int i;


 for (i = 0; i < stream->nformats; i++) {
  if (stream->format[i].fcc == fival->pixel_format) {
   format = &stream->format[i];
   break;
  }
 }
 if (format == ((void*)0))
  return -EINVAL;

 index = fival->index;
 for (i = 0; i < format->nframes; i++) {
  if (format->frame[i].wWidth == fival->width &&
      format->frame[i].wHeight == fival->height) {
   frame = &format->frame[i];
   nintervals = frame->bFrameIntervalType ?: 1;
   if (index < nintervals)
    break;
   index -= nintervals;
  }
 }
 if (i == format->nframes)
  return -EINVAL;

 if (frame->bFrameIntervalType) {
  fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
  fival->discrete.numerator =
   frame->dwFrameInterval[index];
  fival->discrete.denominator = 10000000;
  uvc_simplify_fraction(&fival->discrete.numerator,
   &fival->discrete.denominator, 8, 333);
 } else {
  fival->type = V4L2_FRMIVAL_TYPE_STEPWISE;
  fival->stepwise.min.numerator = frame->dwFrameInterval[0];
  fival->stepwise.min.denominator = 10000000;
  fival->stepwise.max.numerator = frame->dwFrameInterval[1];
  fival->stepwise.max.denominator = 10000000;
  fival->stepwise.step.numerator = frame->dwFrameInterval[2];
  fival->stepwise.step.denominator = 10000000;
  uvc_simplify_fraction(&fival->stepwise.min.numerator,
   &fival->stepwise.min.denominator, 8, 333);
  uvc_simplify_fraction(&fival->stepwise.max.numerator,
   &fival->stepwise.max.denominator, 8, 333);
  uvc_simplify_fraction(&fival->stepwise.step.numerator,
   &fival->stepwise.step.denominator, 8, 333);
 }

 return 0;
}
