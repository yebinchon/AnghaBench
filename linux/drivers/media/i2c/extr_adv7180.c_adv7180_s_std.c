
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int mutex; int curr_norm; } ;


 int adv7180_program_std (struct adv7180_state*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;
 int v4l2_std_to_adv7180 (int ) ;

__attribute__((used)) static int adv7180_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct adv7180_state *state = to_state(sd);
 int ret = mutex_lock_interruptible(&state->mutex);

 if (ret)
  return ret;


 ret = v4l2_std_to_adv7180(std);
 if (ret < 0)
  goto out;

 state->curr_norm = std;

 ret = adv7180_program_std(state);
out:
 mutex_unlock(&state->mutex);
 return ret;
}
