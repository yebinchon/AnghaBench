
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int error; int fiv; int sd; } ;



 int EINVAL ;
 int ERANGE ;
 int REG_G_ACTUAL_P_FR_TIME ;
 int s5k5baf_get_cfg_error (struct s5k5baf*) ;
 int s5k5baf_hw_set_fiv (struct s5k5baf*,int) ;
 int s5k5baf_read (struct s5k5baf*,int ) ;
 int v4l2_err (int *,char*,...) ;
 int v4l2_info (int *,char*,int) ;

__attribute__((used)) static void s5k5baf_hw_find_min_fiv(struct s5k5baf *state)
{
 u16 err, fiv;
 int n;

 fiv = s5k5baf_read(state, REG_G_ACTUAL_P_FR_TIME);
 if (state->error)
  return;

 for (n = 5; n > 0; --n) {
  s5k5baf_hw_set_fiv(state, fiv);
  err = s5k5baf_get_cfg_error(state);
  if (state->error)
   return;
  switch (err) {
  case 128:
   ++fiv;
   break;
  case 0:
   state->fiv = fiv;
   v4l2_info(&state->sd,
      "found valid frame interval: %d00us\n", fiv);
   return;
  default:
   v4l2_err(&state->sd,
     "error setting frame interval: %d\n", err);
   state->error = -EINVAL;
  }
 }
 v4l2_err(&state->sd, "cannot find correct frame interval\n");
 state->error = -ERANGE;
}
