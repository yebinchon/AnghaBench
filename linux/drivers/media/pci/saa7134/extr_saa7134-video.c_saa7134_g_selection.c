
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_selection {scalar_t__ type; int target; int r; } ;
struct saa7134_dev {int crop_bounds; int crop_defrect; int crop_current; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OVERLAY ;



 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int saa7134_g_selection(struct file *file, void *f, struct v4l2_selection *sel)
{
 struct saa7134_dev *dev = video_drvdata(file);

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     sel->type != V4L2_BUF_TYPE_VIDEO_OVERLAY)
  return -EINVAL;

 switch (sel->target) {
 case 130:
  sel->r = dev->crop_current;
  break;
 case 128:
  sel->r = dev->crop_defrect;
  break;
 case 129:
  sel->r = dev->crop_bounds;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
