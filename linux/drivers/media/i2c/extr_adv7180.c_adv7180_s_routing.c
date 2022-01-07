
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int input; int mutex; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int valid_input_mask; int (* select_input ) (struct adv7180_state*,int) ;} ;


 int BIT (int) ;
 int EINVAL ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct adv7180_state*,int) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_s_routing(struct v4l2_subdev *sd, u32 input,
        u32 output, u32 config)
{
 struct adv7180_state *state = to_state(sd);
 int ret = mutex_lock_interruptible(&state->mutex);

 if (ret)
  return ret;

 if (input > 31 || !(BIT(input) & state->chip_info->valid_input_mask)) {
  ret = -EINVAL;
  goto out;
 }

 ret = state->chip_info->select_input(state, input);

 if (ret == 0)
  state->input = input;
out:
 mutex_unlock(&state->mutex);
 return ret;
}
