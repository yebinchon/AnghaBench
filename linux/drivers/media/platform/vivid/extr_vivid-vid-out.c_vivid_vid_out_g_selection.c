
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; scalar_t__ left; } ;
struct vivid_dev {TYPE_1__ sink_rect; int has_compose_out; TYPE_1__ compose_out; int has_crop_out; TYPE_1__ fmt_out_rect; TYPE_1__ crop_out; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct vivid_dev* video_drvdata (struct file*) ;
 TYPE_1__ vivid_max_rect ;

int vivid_vid_out_g_selection(struct file *file, void *priv,
         struct v4l2_selection *sel)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!dev->has_crop_out && !dev->has_compose_out)
  return -ENOTTY;
 if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 sel->r.left = sel->r.top = 0;
 switch (sel->target) {
 case 130:
  if (!dev->has_crop_out)
   return -EINVAL;
  sel->r = dev->crop_out;
  break;
 case 128:
  if (!dev->has_crop_out)
   return -EINVAL;
  sel->r = dev->fmt_out_rect;
  break;
 case 129:
  if (!dev->has_crop_out)
   return -EINVAL;
  sel->r = vivid_max_rect;
  break;
 case 133:
  if (!dev->has_compose_out)
   return -EINVAL;
  sel->r = dev->compose_out;
  break;
 case 131:
 case 132:
  if (!dev->has_compose_out)
   return -EINVAL;
  sel->r = dev->sink_rect;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
