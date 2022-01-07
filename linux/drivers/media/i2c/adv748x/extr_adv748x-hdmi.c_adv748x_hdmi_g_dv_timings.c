
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct adv748x_state {int mutex; } ;
struct adv748x_hdmi {struct v4l2_dv_timings timings; } ;


 struct adv748x_state* adv748x_hdmi_to_state (struct adv748x_hdmi*) ;
 struct adv748x_hdmi* adv748x_sd_to_hdmi (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adv748x_hdmi_g_dv_timings(struct v4l2_subdev *sd,
         struct v4l2_dv_timings *timings)
{
 struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);
 struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);

 mutex_lock(&state->mutex);

 *timings = hdmi->timings;

 mutex_unlock(&state->mutex);

 return 0;
}
