
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7393_state {int std; int output; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * adv7393_init_reg_val ;
 int adv7393_setoutput (struct v4l2_subdev*,int ) ;
 int adv7393_setstd (struct v4l2_subdev*,int ) ;
 int adv7393_write (struct v4l2_subdev*,int ,int ) ;
 struct adv7393_state* to_state (struct v4l2_subdev*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int adv7393_initialize(struct v4l2_subdev *sd)
{
 struct adv7393_state *state = to_state(sd);
 int err = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(adv7393_init_reg_val); i += 2) {

  err = adv7393_write(sd, adv7393_init_reg_val[i],
     adv7393_init_reg_val[i+1]);
  if (err) {
   v4l2_err(sd, "Error initializing\n");
   return err;
  }
 }


 err = adv7393_setoutput(sd, state->output);
 if (err < 0) {
  v4l2_err(sd, "Error setting output during init\n");
  return -EINVAL;
 }

 err = adv7393_setstd(sd, state->std);
 if (err < 0) {
  v4l2_err(sd, "Error setting std during init\n");
  return -EINVAL;
 }

 return err;
}
