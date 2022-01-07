
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct sh_vou_device {int std; TYPE_1__ rect; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;



 int V4L2_STD_525_60 ;
 int VOU_MAX_IMAGE_WIDTH ;
 struct sh_vou_device* video_drvdata (struct file*) ;

__attribute__((used)) static int sh_vou_g_selection(struct file *file, void *fh,
         struct v4l2_selection *sel)
{
 struct sh_vou_device *vou_dev = video_drvdata(file);

 if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;
 switch (sel->target) {
 case 130:
  sel->r = vou_dev->rect;
  break;
 case 128:
 case 129:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = VOU_MAX_IMAGE_WIDTH;
  if (vou_dev->std & V4L2_STD_525_60)
   sel->r.height = 480;
  else
   sel->r.height = 576;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
