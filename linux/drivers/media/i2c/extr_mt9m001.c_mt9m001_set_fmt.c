
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int xfer_func; int quantization; int ycbcr_enc; int field; int colorspace; int code; scalar_t__ height; int width; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m001_datafmt {int colorspace; int code; } ;
struct mt9m001 {scalar_t__ fmts; struct mt9m001_datafmt* fmt; int num_fmts; scalar_t__ y_skip_top; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int EINVAL ;
 scalar_t__ MT9M001_MAX_HEIGHT ;
 int MT9M001_MAX_WIDTH ;
 scalar_t__ MT9M001_MIN_HEIGHT ;
 int MT9M001_MIN_WIDTH ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 scalar_t__ mt9m001_colour_fmts ;
 struct mt9m001_datafmt* mt9m001_find_datafmt (int ,scalar_t__,int ) ;
 int mt9m001_s_fmt (struct v4l2_subdev*,struct mt9m001_datafmt const*,struct v4l2_mbus_framefmt*) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int ,int ,int,scalar_t__*,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static int mt9m001_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 const struct mt9m001_datafmt *fmt;

 if (format->pad)
  return -EINVAL;

 v4l_bound_align_image(&mf->width, MT9M001_MIN_WIDTH,
  MT9M001_MAX_WIDTH, 1,
  &mf->height, MT9M001_MIN_HEIGHT + mt9m001->y_skip_top,
  MT9M001_MAX_HEIGHT + mt9m001->y_skip_top, 0, 0);

 if (mt9m001->fmts == mt9m001_colour_fmts)
  mf->height = ALIGN(mf->height - 1, 2);

 fmt = mt9m001_find_datafmt(mf->code, mt9m001->fmts,
       mt9m001->num_fmts);
 if (!fmt) {
  fmt = mt9m001->fmt;
  mf->code = fmt->code;
 }

 mf->colorspace = fmt->colorspace;
 mf->field = V4L2_FIELD_NONE;
 mf->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 mf->quantization = V4L2_QUANTIZATION_DEFAULT;
 mf->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  return mt9m001_s_fmt(sd, fmt, mf);
 cfg->try_fmt = *mf;
 return 0;
}
