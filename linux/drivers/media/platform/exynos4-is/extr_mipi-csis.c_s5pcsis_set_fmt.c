
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ pad; int which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct csis_state {int lock; struct csis_pix_format const* csis_fmt; } ;
struct csis_pix_format {int dummy; } ;


 scalar_t__ CSIS_PAD_SOURCE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_mbus_framefmt* __s5pcsis_get_format (struct csis_state*,struct v4l2_subdev_pad_config*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csis_pix_format* s5pcsis_try_format (struct v4l2_mbus_framefmt*) ;
 struct csis_state* sd_to_csis_state (struct v4l2_subdev*) ;

__attribute__((used)) static int s5pcsis_set_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct csis_state *state = sd_to_csis_state(sd);
 struct csis_pix_format const *csis_fmt;
 struct v4l2_mbus_framefmt *mf;

 mf = __s5pcsis_get_format(state, cfg, fmt->which);

 if (fmt->pad == CSIS_PAD_SOURCE) {
  if (mf) {
   mutex_lock(&state->lock);
   fmt->format = *mf;
   mutex_unlock(&state->lock);
  }
  return 0;
 }
 csis_fmt = s5pcsis_try_format(&fmt->format);
 if (mf) {
  mutex_lock(&state->lock);
  *mf = fmt->format;
  if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE)
   state->csis_fmt = csis_fmt;
  mutex_unlock(&state->lock);
 }
 return 0;
}
