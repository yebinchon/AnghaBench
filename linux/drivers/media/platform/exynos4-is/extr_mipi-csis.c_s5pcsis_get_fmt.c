
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct csis_state {int lock; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* __s5pcsis_get_format (struct csis_state*,struct v4l2_subdev_pad_config*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csis_state* sd_to_csis_state (struct v4l2_subdev*) ;

__attribute__((used)) static int s5pcsis_get_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct csis_state *state = sd_to_csis_state(sd);
 struct v4l2_mbus_framefmt *mf;

 mf = __s5pcsis_get_format(state, cfg, fmt->which);
 if (!mf)
  return -EINVAL;

 mutex_lock(&state->lock);
 fmt->format = *mf;
 mutex_unlock(&state->lock);
 return 0;
}
