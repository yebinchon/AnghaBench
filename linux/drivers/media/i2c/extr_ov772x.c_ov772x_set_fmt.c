
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int height; int width; int code; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;
struct ov772x_win_size {TYPE_1__ rect; } ;
struct ov772x_priv {scalar_t__ power_count; int lock; struct ov772x_color_format const* cfmt; struct ov772x_win_size const* win; scalar_t__ streaming; } ;
struct ov772x_color_format {int colorspace; int code; } ;


 int EBUSY ;
 int EINVAL ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov772x_select_params (struct v4l2_mbus_framefmt*,struct ov772x_color_format const**,struct ov772x_win_size const**) ;
 int ov772x_set_params (struct ov772x_priv*,struct ov772x_color_format const*,struct ov772x_win_size const*) ;
 struct ov772x_priv* to_ov772x (struct v4l2_subdev*) ;

__attribute__((used)) static int ov772x_set_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct ov772x_priv *priv = to_ov772x(sd);
 struct v4l2_mbus_framefmt *mf = &format->format;
 const struct ov772x_color_format *cfmt;
 const struct ov772x_win_size *win;
 int ret = 0;

 if (format->pad)
  return -EINVAL;

 ov772x_select_params(mf, &cfmt, &win);

 mf->code = cfmt->code;
 mf->width = win->rect.width;
 mf->height = win->rect.height;
 mf->field = V4L2_FIELD_NONE;
 mf->colorspace = cfmt->colorspace;
 mf->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 mf->quantization = V4L2_QUANTIZATION_DEFAULT;
 mf->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  cfg->try_fmt = *mf;
  return 0;
 }

 mutex_lock(&priv->lock);

 if (priv->streaming) {
  ret = -EBUSY;
  goto error;
 }






 if (priv->power_count > 0) {
  ret = ov772x_set_params(priv, cfmt, win);
  if (ret < 0)
   goto error;
 }
 priv->win = win;
 priv->cfmt = cfmt;

error:
 mutex_unlock(&priv->lock);

 return ret;
}
