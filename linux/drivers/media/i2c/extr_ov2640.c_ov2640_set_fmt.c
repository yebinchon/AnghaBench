
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int code; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int height; int width; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov2640_win_size {int height; int width; } ;
struct ov2640_priv {int cfmt_code; int lock; struct ov2640_win_size const* win; scalar_t__ streaming; } ;
struct i2c_client {int dummy; } ;


 int EBUSY ;
 int EINVAL ;






 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov2640_win_size* ov2640_select_win (int ,int ) ;
 struct ov2640_priv* to_ov2640 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2640_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov2640_priv *priv = to_ov2640(client);
 const struct ov2640_win_size *win;
 int ret = 0;

 if (format->pad)
  return -EINVAL;

 mutex_lock(&priv->lock);


 win = ov2640_select_win(mf->width, mf->height);
 mf->width = win->width;
 mf->height = win->height;

 mf->field = V4L2_FIELD_NONE;
 mf->colorspace = V4L2_COLORSPACE_SRGB;
 mf->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 mf->quantization = V4L2_QUANTIZATION_DEFAULT;
 mf->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 switch (mf->code) {
 case 133:
 case 132:
 case 129:
 case 131:
 case 128:
 case 130:
  break;
 default:
  mf->code = 131;
  break;
 }

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  struct ov2640_priv *priv = to_ov2640(client);

  if (priv->streaming) {
   ret = -EBUSY;
   goto out;
  }

  priv->win = win;

  priv->cfmt_code = mf->code;
 } else {
  cfg->try_fmt = *mf;
 }
out:
 mutex_unlock(&priv->lock);

 return ret;
}
