
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int UXGA_HEIGHT ;
 int UXGA_WIDTH ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;

__attribute__((used)) static int ov2640_get_selection(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_selection *sel)
{
 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 switch (sel->target) {
 case 128:
 case 129:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = UXGA_WIDTH;
  sel->r.height = UXGA_HEIGHT;
  return 0;
 default:
  return -EINVAL;
 }
}
