
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k4ecgx {int lock; TYPE_3__* curr_pixfmt; TYPE_2__* curr_frmsize; } ;
struct TYPE_6__ {int colorspace; int code; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ size; } ;


 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k4ecgx* to_s5k4ecgx (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int s5k4ecgx_get_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct s5k4ecgx *priv = to_s5k4ecgx(sd);
 struct v4l2_mbus_framefmt *mf;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  if (cfg) {
   mf = v4l2_subdev_get_try_format(sd, cfg, 0);
   fmt->format = *mf;
  }
  return 0;
 }

 mf = &fmt->format;

 mutex_lock(&priv->lock);
 mf->width = priv->curr_frmsize->size.width;
 mf->height = priv->curr_frmsize->size.height;
 mf->code = priv->curr_pixfmt->code;
 mf->colorspace = priv->curr_pixfmt->colorspace;
 mf->field = V4L2_FIELD_NONE;
 mutex_unlock(&priv->lock);

 return 0;
}
