
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int xfer_func; int quantization; int ycbcr_enc; int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov2640_priv {int cfmt_code; TYPE_1__* win; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;


 int EINVAL ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 struct ov2640_priv* to_ov2640 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov2640_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov2640_priv *priv = to_ov2640(client);

 if (format->pad)
  return -EINVAL;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {





  return -EINVAL;

 }

 mf->width = priv->win->width;
 mf->height = priv->win->height;
 mf->code = priv->cfmt_code;
 mf->colorspace = V4L2_COLORSPACE_SRGB;
 mf->field = V4L2_FIELD_NONE;
 mf->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 mf->quantization = V4L2_QUANTIZATION_DEFAULT;
 mf->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 return 0;
}
