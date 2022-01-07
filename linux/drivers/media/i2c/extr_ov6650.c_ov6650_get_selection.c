
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int left; int top; int height; int width; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct ov6650 {TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;


 int DEF_HSTRT ;
 int DEF_VSTRT ;
 int EINVAL ;
 int H_CIF ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int W_CIF ;
 struct ov6650* to_ov6650 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov6650_get_selection(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 switch (sel->target) {
 case 128:
  sel->r.left = DEF_HSTRT << 1;
  sel->r.top = DEF_VSTRT << 1;
  sel->r.width = W_CIF;
  sel->r.height = H_CIF;
  return 0;
 case 129:
  sel->r = priv->rect;
  return 0;
 default:
  return -EINVAL;
 }
}
