
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {TYPE_1__* scale; int norm; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED_BT ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 TYPE_1__* tw9910_select_norm (int ,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_get_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct tw9910_priv *priv = to_tw9910(client);

 if (format->pad)
  return -EINVAL;

 if (!priv->scale) {
  priv->scale = tw9910_select_norm(priv->norm, 640, 480);
  if (!priv->scale)
   return -EINVAL;
 }

 mf->width = priv->scale->width;
 mf->height = priv->scale->height;
 mf->code = MEDIA_BUS_FMT_UYVY8_2X8;
 mf->colorspace = V4L2_COLORSPACE_SMPTE170M;
 mf->field = V4L2_FIELD_INTERLACED_BT;

 return 0;
}
