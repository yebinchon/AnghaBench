
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* gain; TYPE_1__* exposure; } ;
struct s5k5baf {TYPE_3__ ctrls; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_4__ {unsigned int val; } ;


 int AALG_AE_EN ;
 int AALG_DIVLEI_EN ;
 int V4L2_EXPOSURE_AUTO ;
 int s5k5baf_hw_set_alg (struct s5k5baf*,int,int) ;
 int s5k5baf_hw_set_user_exposure (struct s5k5baf*,unsigned int) ;
 int s5k5baf_hw_set_user_gain (struct s5k5baf*,int ) ;

__attribute__((used)) static void s5k5baf_hw_set_auto_exposure(struct s5k5baf *state, int value)
{
 if (value == V4L2_EXPOSURE_AUTO) {
  s5k5baf_hw_set_alg(state, AALG_AE_EN | AALG_DIVLEI_EN, 1);
 } else {
  unsigned int exp_time = state->ctrls.exposure->val;

  s5k5baf_hw_set_user_exposure(state, exp_time);
  s5k5baf_hw_set_user_gain(state, state->ctrls.gain->val);
  s5k5baf_hw_set_alg(state, AALG_AE_EN | AALG_DIVLEI_EN, 0);
 }
}
