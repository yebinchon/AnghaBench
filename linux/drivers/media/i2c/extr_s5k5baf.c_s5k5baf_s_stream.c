
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5k5baf {int streaming; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k5baf_clear_error (struct s5k5baf*) ;
 int s5k5baf_hw_set_config (struct s5k5baf*) ;
 int s5k5baf_hw_set_crop_rects (struct s5k5baf*) ;
 int s5k5baf_hw_set_stream (struct s5k5baf*,int) ;
 int s5k5baf_i2c_write (struct s5k5baf*,int,int) ;
 struct s5k5baf* to_s5k5baf (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k5baf_s_stream(struct v4l2_subdev *sd, int on)
{
 struct s5k5baf *state = to_s5k5baf(sd);
 int ret;

 mutex_lock(&state->lock);

 if (state->streaming == !!on) {
  ret = 0;
  goto out;
 }

 if (on) {
  s5k5baf_hw_set_config(state);
  ret = s5k5baf_hw_set_crop_rects(state);
  if (ret < 0)
   goto out;
  s5k5baf_hw_set_stream(state, 1);
  s5k5baf_i2c_write(state, 0xb0cc, 0x000b);
 } else {
  s5k5baf_hw_set_stream(state, 0);
 }
 ret = s5k5baf_clear_error(state);
 if (!ret)
  state->streaming = !state->streaming;

out:
 mutex_unlock(&state->lock);

 return ret;
}
