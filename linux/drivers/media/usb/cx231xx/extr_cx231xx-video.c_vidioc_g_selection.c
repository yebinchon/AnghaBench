
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int height; int width; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



__attribute__((used)) static int vidioc_g_selection(struct file *file, void *priv,
         struct v4l2_selection *s)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (s->target) {
 case 129:
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = dev->width;
  s->r.height = dev->height;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
