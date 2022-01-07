
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int mutex; } ;
struct adv748x_hdmi {int tx; } ;


 scalar_t__ adv748x_hdmi_has_signal (struct adv748x_state*) ;
 struct adv748x_state* adv748x_hdmi_to_state (struct adv748x_hdmi*) ;
 struct adv748x_hdmi* adv748x_sd_to_hdmi (struct v4l2_subdev*) ;
 int adv748x_tx_power (int ,int) ;
 int adv_dbg (struct adv748x_state*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adv748x_hdmi_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);
 struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);
 int ret;

 mutex_lock(&state->mutex);

 ret = adv748x_tx_power(hdmi->tx, enable);
 if (ret)
  goto done;

 if (adv748x_hdmi_has_signal(state))
  adv_dbg(state, "Detected HDMI signal\n");
 else
  adv_dbg(state, "Couldn't detect HDMI video signal\n");

done:
 mutex_unlock(&state->mutex);
 return ret;
}
