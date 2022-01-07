
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_demod_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int FEC_1_2 ;
 int FEC_2_3 ;
 int FEC_3_4 ;
 int FEC_5_6 ;
 int FEC_7_8 ;
 int V6_CODE_RATE_TPS_MASK ;
 int V6_CODE_RATE_TPS_REG ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static
int mxl1x1sf_demod_get_tps_code_rate(struct mxl111sf_demod_state *state,
         enum fe_code_rate *code_rate)
{
 u8 val;
 int ret = mxl111sf_demod_read_reg(state, V6_CODE_RATE_TPS_REG, &val);

 if (mxl_fail(ret))
  goto fail;

 switch (val & V6_CODE_RATE_TPS_MASK) {
 case 0:
  *code_rate = FEC_1_2;
  break;
 case 1:
  *code_rate = FEC_2_3;
  break;
 case 2:
  *code_rate = FEC_3_4;
  break;
 case 3:
  *code_rate = FEC_5_6;
  break;
 case 4:
  *code_rate = FEC_7_8;
  break;
 }
fail:
 return ret;
}
