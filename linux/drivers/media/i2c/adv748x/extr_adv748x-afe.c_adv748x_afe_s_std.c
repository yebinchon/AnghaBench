
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int mutex; } ;
struct adv748x_afe {int curr_norm; } ;


 int adv748x_afe_set_video_standard (struct adv748x_state*,int) ;
 int adv748x_afe_std (int ) ;
 struct adv748x_state* adv748x_afe_to_state (struct adv748x_afe*) ;
 struct adv748x_afe* adv748x_sd_to_afe (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adv748x_afe_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct adv748x_afe *afe = adv748x_sd_to_afe(sd);
 struct adv748x_state *state = adv748x_afe_to_state(afe);
 int afe_std = adv748x_afe_std(std);

 if (afe_std < 0)
  return afe_std;

 mutex_lock(&state->mutex);

 adv748x_afe_set_video_standard(state, afe_std);
 afe->curr_norm = std;

 mutex_unlock(&state->mutex);

 return 0;
}
