
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; int field; int colorspace; int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int width; int height; } ;
struct ov6650 {int half_scale; int colorspace; int code; TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct ov6650* to_ov6650 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov6650_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);

 if (format->pad)
  return -EINVAL;

 mf->width = priv->rect.width >> priv->half_scale;
 mf->height = priv->rect.height >> priv->half_scale;
 mf->code = priv->code;
 mf->colorspace = priv->colorspace;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
