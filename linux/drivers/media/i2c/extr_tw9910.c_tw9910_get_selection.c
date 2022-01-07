
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_subdev_selection {scalar_t__ which; scalar_t__ target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {int norm; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_CROP_BOUNDS ;
 int V4L2_STD_NTSC ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct tw9910_priv *priv = to_tw9910(client);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 if (sel->target > V4L2_SEL_TGT_CROP_BOUNDS)
  return -EINVAL;

 sel->r.left = 0;
 sel->r.top = 0;
 if (priv->norm & V4L2_STD_NTSC) {
  sel->r.width = 640;
  sel->r.height = 480;
 } else {
  sel->r.width = 768;
  sel->r.height = 576;
 }

 return 0;
}
