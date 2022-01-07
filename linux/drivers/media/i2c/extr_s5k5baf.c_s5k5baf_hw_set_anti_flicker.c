
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int dummy; } ;


 int AALG_FLICKER_EN ;
 int REG_SF_FLICKER_QUANT ;
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ;
 int s5k5baf_hw_set_alg (struct s5k5baf*,int ,int) ;
 int s5k5baf_write_seq (struct s5k5baf*,int ,int,int) ;

__attribute__((used)) static void s5k5baf_hw_set_anti_flicker(struct s5k5baf *state, int v)
{
 if (v == V4L2_CID_POWER_LINE_FREQUENCY_AUTO) {
  s5k5baf_hw_set_alg(state, AALG_FLICKER_EN, 1);
 } else {


  s5k5baf_write_seq(state, REG_SF_FLICKER_QUANT, v, 1);
  s5k5baf_hw_set_alg(state, AALG_FLICKER_EN, 0);
 }
}
