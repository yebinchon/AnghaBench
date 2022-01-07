
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k4ecgx_pixfmt {int dummy; } ;
struct s5k4ecgx_frmsize {int dummy; } ;
struct s5k4ecgx {int set_params; int lock; struct s5k4ecgx_pixfmt const* curr_pixfmt; struct s5k4ecgx_frmsize const* curr_frmsize; int streaming; } ;


 int EBUSY ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k4ecgx_pixfmt* s5k4ecgx_try_fmt (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ;
 int s5k4ecgx_try_frame_size (struct v4l2_mbus_framefmt*,struct s5k4ecgx_frmsize const**) ;
 struct s5k4ecgx* to_s5k4ecgx (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int s5k4ecgx_set_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 struct s5k4ecgx *priv = to_s5k4ecgx(sd);
 const struct s5k4ecgx_frmsize *fsize = ((void*)0);
 const struct s5k4ecgx_pixfmt *pf;
 struct v4l2_mbus_framefmt *mf;
 int ret = 0;

 pf = s5k4ecgx_try_fmt(sd, &fmt->format);
 s5k4ecgx_try_frame_size(&fmt->format, &fsize);
 fmt->format.colorspace = V4L2_COLORSPACE_JPEG;
 fmt->format.field = V4L2_FIELD_NONE;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  if (cfg) {
   mf = v4l2_subdev_get_try_format(sd, cfg, 0);
   *mf = fmt->format;
  }
  return 0;
 }

 mutex_lock(&priv->lock);
 if (!priv->streaming) {
  priv->curr_frmsize = fsize;
  priv->curr_pixfmt = pf;
  priv->set_params = 1;
 } else {
  ret = -EBUSY;
 }
 mutex_unlock(&priv->lock);

 return ret;
}
