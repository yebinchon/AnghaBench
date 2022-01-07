
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int apply_cfg; scalar_t__ error; int sd; } ;



 scalar_t__ EINVAL ;
 int s5k5baf_get_cfg_error (struct s5k5baf*) ;
 int s5k5baf_hw_find_min_fiv (struct s5k5baf*) ;
 int v4l2_err (int *,char*,int) ;

__attribute__((used)) static void s5k5baf_hw_validate_cfg(struct s5k5baf *state)
{
 u16 err;

 err = s5k5baf_get_cfg_error(state);
 if (state->error)
  return;

 switch (err) {
 case 0:
  state->apply_cfg = 1;
  return;
 case 128:
  s5k5baf_hw_find_min_fiv(state);
  if (!state->error)
   state->apply_cfg = 1;
  return;
 default:
  v4l2_err(&state->sd,
    "error setting format: %d\n", err);
  state->error = -EINVAL;
 }
}
