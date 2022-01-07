
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; scalar_t__ left; } ;
struct vivid_dev {TYPE_1__ fmt_cap_rect; int has_compose_cap; TYPE_1__ compose_cap; TYPE_1__ src_rect; int has_crop_cap; TYPE_1__ crop_cap; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENODATA ;
 int ENOTTY ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;






 struct vivid_dev* video_drvdata (struct file*) ;
 scalar_t__ vivid_is_webcam (struct vivid_dev*) ;
 TYPE_1__ vivid_max_rect ;

int vivid_vid_cap_g_selection(struct file *file, void *priv,
         struct v4l2_selection *sel)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!dev->has_crop_cap && !dev->has_compose_cap)
  return -ENOTTY;
 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 if (vivid_is_webcam(dev))
  return -ENODATA;

 sel->r.left = sel->r.top = 0;
 switch (sel->target) {
 case 130:
  if (!dev->has_crop_cap)
   return -EINVAL;
  sel->r = dev->crop_cap;
  break;
 case 128:
 case 129:
  if (!dev->has_crop_cap)
   return -EINVAL;
  sel->r = dev->src_rect;
  break;
 case 132:
  if (!dev->has_compose_cap)
   return -EINVAL;
  sel->r = vivid_max_rect;
  break;
 case 133:
  if (!dev->has_compose_cap)
   return -EINVAL;
  sel->r = dev->compose_cap;
  break;
 case 131:
  if (!dev->has_compose_cap)
   return -EINVAL;
  sel->r = dev->fmt_cap_rect;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
