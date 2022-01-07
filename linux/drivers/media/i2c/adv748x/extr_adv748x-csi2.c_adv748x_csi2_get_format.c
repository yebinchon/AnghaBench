
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int mutex; } ;
struct adv748x_csi2 {struct adv748x_state* state; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* adv748x_csi2_get_pad_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct adv748x_csi2* adv748x_sd_to_csi2 (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adv748x_csi2_get_format(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *sdformat)
{
 struct adv748x_csi2 *tx = adv748x_sd_to_csi2(sd);
 struct adv748x_state *state = tx->state;
 struct v4l2_mbus_framefmt *mbusformat;

 mbusformat = adv748x_csi2_get_pad_format(sd, cfg, sdformat->pad,
       sdformat->which);
 if (!mbusformat)
  return -EINVAL;

 mutex_lock(&state->mutex);

 sdformat->format = *mbusformat;

 mutex_unlock(&state->mutex);

 return 0;
}
