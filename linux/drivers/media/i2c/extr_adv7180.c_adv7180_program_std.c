
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int curr_norm; } ;


 int adv7180_set_video_standard (struct adv7180_state*,int) ;
 int v4l2_std_to_adv7180 (int ) ;

__attribute__((used)) static int adv7180_program_std(struct adv7180_state *state)
{
 int ret;

 ret = v4l2_std_to_adv7180(state->curr_norm);
 if (ret < 0)
  return ret;

 ret = adv7180_set_video_standard(state, ret);
 if (ret < 0)
  return ret;
 return 0;
}
