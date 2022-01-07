
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ field; int height; int width; int colorspace; int code; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_scale_ctrl {int height; int width; } ;
struct tw9910_priv {int norm; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_INTERLACED_BT ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_err (int *,char*,scalar_t__) ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 int tw9910_s_fmt (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ;
 struct tw9910_scale_ctrl* tw9910_select_norm (int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_set_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct tw9910_priv *priv = to_tw9910(client);
 const struct tw9910_scale_ctrl *scale;

 if (format->pad)
  return -EINVAL;

 if (mf->field == V4L2_FIELD_ANY) {
  mf->field = V4L2_FIELD_INTERLACED_BT;
 } else if (mf->field != V4L2_FIELD_INTERLACED_BT) {
  dev_err(&client->dev, "Field type %d invalid\n", mf->field);
  return -EINVAL;
 }

 mf->code = MEDIA_BUS_FMT_UYVY8_2X8;
 mf->colorspace = V4L2_COLORSPACE_SMPTE170M;


 scale = tw9910_select_norm(priv->norm, mf->width, mf->height);
 if (!scale)
  return -EINVAL;

 mf->width = scale->width;
 mf->height = scale->height;

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  return tw9910_s_fmt(sd, mf);

 cfg->try_fmt = *mf;

 return 0;
}
