
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int H_SXGA ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int W_SXGA ;

__attribute__((used)) static int ov9640_get_selection(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_selection *sel)
{
 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 sel->r.left = 0;
 sel->r.top = 0;
 switch (sel->target) {
 case 128:
 case 129:
  sel->r.width = W_SXGA;
  sel->r.height = H_SXGA;
  return 0;
 default:
  return -EINVAL;
 }
}
