
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct ak881x {int lines; } ;


 int EINVAL ;

 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct ak881x* to_ak881x (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ak881x_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ak881x *ak881x = to_ak881x(client);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 switch (sel->target) {
 case 128:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = 720;
  sel->r.height = ak881x->lines;
  return 0;
 default:
  return -EINVAL;
 }
}
