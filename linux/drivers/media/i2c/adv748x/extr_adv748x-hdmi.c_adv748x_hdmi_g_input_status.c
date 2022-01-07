
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int mutex; } ;
struct adv748x_hdmi {int dummy; } ;


 int V4L2_IN_ST_NO_SIGNAL ;
 scalar_t__ adv748x_hdmi_has_signal (struct adv748x_state*) ;
 struct adv748x_state* adv748x_hdmi_to_state (struct adv748x_hdmi*) ;
 struct adv748x_hdmi* adv748x_sd_to_hdmi (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adv748x_hdmi_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);
 struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);

 mutex_lock(&state->mutex);

 *status = adv748x_hdmi_has_signal(state) ? 0 : V4L2_IN_ST_NO_SIGNAL;

 mutex_unlock(&state->mutex);

 return 0;
}
