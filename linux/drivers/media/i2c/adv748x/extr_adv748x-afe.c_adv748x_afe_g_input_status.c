
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int mutex; } ;
struct adv748x_afe {int dummy; } ;


 int adv748x_afe_status (struct adv748x_afe*,int *,int *) ;
 struct adv748x_state* adv748x_afe_to_state (struct adv748x_afe*) ;
 struct adv748x_afe* adv748x_sd_to_afe (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adv748x_afe_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 struct adv748x_afe *afe = adv748x_sd_to_afe(sd);
 struct adv748x_state *state = adv748x_afe_to_state(afe);
 int ret;

 mutex_lock(&state->mutex);

 ret = adv748x_afe_status(afe, status, ((void*)0));

 mutex_unlock(&state->mutex);

 return ret;
}
