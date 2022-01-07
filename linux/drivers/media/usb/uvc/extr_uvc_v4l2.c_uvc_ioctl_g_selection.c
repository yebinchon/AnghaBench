
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct uvc_streaming {scalar_t__ type; int mutex; TYPE_2__* cur_frame; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int wHeight; int wWidth; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;




 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int uvc_ioctl_g_selection(struct file *file, void *fh,
     struct v4l2_selection *sel)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;

 if (sel->type != stream->type)
  return -EINVAL;

 switch (sel->target) {
 case 128:
 case 129:
  if (stream->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 case 130:
 case 131:
  if (stream->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 sel->r.left = 0;
 sel->r.top = 0;
 mutex_lock(&stream->mutex);
 sel->r.width = stream->cur_frame->wWidth;
 sel->r.height = stream->cur_frame->wHeight;
 mutex_unlock(&stream->mutex);

 return 0;
}
