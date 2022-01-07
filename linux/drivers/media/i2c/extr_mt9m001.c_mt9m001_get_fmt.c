
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int xfer_func; int quantization; int ycbcr_enc; int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int height; int width; } ;
struct mt9m001 {TYPE_2__* fmt; TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;
struct TYPE_4__ {int colorspace; int code; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int mt9m001_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 struct v4l2_mbus_framefmt *mf = &format->format;

 if (format->pad)
  return -EINVAL;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  mf = v4l2_subdev_get_try_format(sd, cfg, 0);
  format->format = *mf;
  return 0;
 }

 mf->width = mt9m001->rect.width;
 mf->height = mt9m001->rect.height;
 mf->code = mt9m001->fmt->code;
 mf->colorspace = mt9m001->fmt->colorspace;
 mf->field = V4L2_FIELD_NONE;
 mf->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 mf->quantization = V4L2_QUANTIZATION_DEFAULT;
 mf->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 return 0;
}
