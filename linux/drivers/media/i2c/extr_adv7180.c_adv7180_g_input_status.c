
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int mutex; } ;


 int __adv7180_status (struct adv7180_state*,int *,int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 struct adv7180_state *state = to_state(sd);
 int ret = mutex_lock_interruptible(&state->mutex);
 if (ret)
  return ret;

 ret = __adv7180_status(state, status, ((void*)0));
 mutex_unlock(&state->mutex);
 return ret;
}
