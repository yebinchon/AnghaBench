
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int handler; } ;
struct s5k5baf {int power; TYPE_1__ ctrls; int lock; int * fw; } ;


 int REG_SET_HOST_INT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k5baf_clear_error (struct s5k5baf*) ;
 int s5k5baf_hw_init (struct s5k5baf*) ;
 int s5k5baf_hw_patch (struct s5k5baf*) ;
 int s5k5baf_hw_set_ccm (struct s5k5baf*) ;
 int s5k5baf_hw_set_cis (struct s5k5baf*) ;
 int s5k5baf_hw_set_clocks (struct s5k5baf*) ;
 int s5k5baf_hw_set_video_bus (struct s5k5baf*) ;
 int s5k5baf_i2c_write (struct s5k5baf*,int ,int) ;
 int s5k5baf_initialize_data (struct s5k5baf*) ;
 int s5k5baf_load_setfile (struct s5k5baf*) ;
 int s5k5baf_power_off (struct s5k5baf*) ;
 int s5k5baf_power_on (struct s5k5baf*) ;
 struct s5k5baf* to_s5k5baf (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int s5k5baf_set_power(struct v4l2_subdev *sd, int on)
{
 struct s5k5baf *state = to_s5k5baf(sd);
 int ret = 0;

 mutex_lock(&state->lock);

 if (state->power != !on)
  goto out;

 if (on) {
  if (state->fw == ((void*)0))
   s5k5baf_load_setfile(state);

  s5k5baf_initialize_data(state);
  ret = s5k5baf_power_on(state);
  if (ret < 0)
   goto out;

  s5k5baf_hw_init(state);
  s5k5baf_hw_patch(state);
  s5k5baf_i2c_write(state, REG_SET_HOST_INT, 1);
  s5k5baf_hw_set_clocks(state);

  ret = s5k5baf_hw_set_video_bus(state);
  if (ret < 0)
   goto out;

  s5k5baf_hw_set_cis(state);
  s5k5baf_hw_set_ccm(state);

  ret = s5k5baf_clear_error(state);
  if (!ret)
   state->power++;
 } else {
  s5k5baf_power_off(state);
  state->power--;
 }

out:
 mutex_unlock(&state->lock);

 if (!ret && on)
  ret = v4l2_ctrl_handler_setup(&state->ctrls.handler);

 return ret;
}
