
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int streaming; int mutex; } ;


 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct adv7180_state *state = to_state(sd);
 int ret;


 if (!enable) {
  state->streaming = enable;
  return 0;
 }


 ret = mutex_lock_interruptible(&state->mutex);
 if (ret)
  return ret;
 state->streaming = enable;
 mutex_unlock(&state->mutex);
 return 0;
}
