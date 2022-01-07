
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ interlaced; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;
struct adv748x_state {int mutex; } ;
struct adv748x_hdmi {struct v4l2_dv_timings timings; } ;


 int ADV748X_CP_VID_ADJ_2 ;
 int ADV748X_CP_VID_ADJ_2_INTERLACED ;
 int EINVAL ;
 int ERANGE ;
 int adv748x_fill_optional_dv_timings (struct v4l2_dv_timings*) ;
 int adv748x_hdmi_set_video_timings (struct adv748x_state*,struct v4l2_dv_timings*) ;
 int adv748x_hdmi_timings_cap ;
 struct adv748x_state* adv748x_hdmi_to_state (struct adv748x_hdmi*) ;
 struct adv748x_hdmi* adv748x_sd_to_hdmi (struct v4l2_subdev*) ;
 int cp_clrset (struct adv748x_state*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int ,int) ;
 int v4l2_valid_dv_timings (struct v4l2_dv_timings*,int *,int *,int *) ;

__attribute__((used)) static int adv748x_hdmi_s_dv_timings(struct v4l2_subdev *sd,
         struct v4l2_dv_timings *timings)
{
 struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);
 struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);
 int ret;

 if (!timings)
  return -EINVAL;

 if (v4l2_match_dv_timings(&hdmi->timings, timings, 0, 0))
  return 0;

 if (!v4l2_valid_dv_timings(timings, &adv748x_hdmi_timings_cap,
       ((void*)0), ((void*)0)))
  return -ERANGE;

 adv748x_fill_optional_dv_timings(timings);

 mutex_lock(&state->mutex);

 ret = adv748x_hdmi_set_video_timings(state, timings);
 if (ret)
  goto error;

 hdmi->timings = *timings;

 cp_clrset(state, ADV748X_CP_VID_ADJ_2, ADV748X_CP_VID_ADJ_2_INTERLACED,
    timings->bt.interlaced ?
      ADV748X_CP_VID_ADJ_2_INTERLACED : 0);

 mutex_unlock(&state->mutex);

 return 0;

error:
 mutex_unlock(&state->mutex);
 return ret;
}
