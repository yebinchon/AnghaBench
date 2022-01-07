
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; int left; int top; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;
struct cx23885_dev {int tvnorm; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;


 int norm_maxh (int ) ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_selection(struct file *file, void *fh,
         struct v4l2_selection *sel)
{
 struct cx23885_dev *dev = video_drvdata(file);

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (sel->target) {
 case 129:
 case 128:
  sel->r.top = 0;
  sel->r.left = 0;
  sel->r.width = 720;
  sel->r.height = norm_maxh(dev->tvnorm);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
