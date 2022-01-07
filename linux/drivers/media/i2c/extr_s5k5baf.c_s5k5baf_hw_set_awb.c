
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s5k5baf_ctrls {TYPE_2__* gain_blue; TYPE_1__* gain_red; } ;
struct s5k5baf {struct s5k5baf_ctrls ctrls; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int AALG_WB_EN ;
 int REG_SF_RGAIN ;
 int S5K5BAF_GAIN_GREEN_DEF ;
 int s5k5baf_hw_set_alg (struct s5k5baf*,int ,int) ;
 int s5k5baf_write_seq (struct s5k5baf*,int ,int ,int,int ,int,int ,int,int) ;

__attribute__((used)) static void s5k5baf_hw_set_awb(struct s5k5baf *state, int awb)
{
 struct s5k5baf_ctrls *ctrls = &state->ctrls;

 if (!awb)
  s5k5baf_write_seq(state, REG_SF_RGAIN,
      ctrls->gain_red->val, 1,
      S5K5BAF_GAIN_GREEN_DEF, 1,
      ctrls->gain_blue->val, 1,
      1);

 s5k5baf_hw_set_alg(state, AALG_WB_EN, awb);
}
