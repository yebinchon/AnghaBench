
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int code; int colorspace; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int height; int width; } ;
struct mt9t112_priv {TYPE_2__* format; TYPE_1__ frame; } ;
struct i2c_client {int dummy; } ;
struct TYPE_4__ {int code; int colorspace; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct mt9t112_priv* to_mt9t112 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t112_get_fmt(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t112_priv *priv = to_mt9t112(client);

 if (format->pad)
  return -EINVAL;

 mf->width = priv->frame.width;
 mf->height = priv->frame.height;
 mf->colorspace = priv->format->colorspace;
 mf->code = priv->format->code;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
