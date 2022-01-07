
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_demod_state {int dummy; } ;
typedef enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;


 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int V6_MODORDER_TPS_REG ;
 int V6_PARAM_CONSTELLATION_MASK ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static
int mxl1x1sf_demod_get_tps_modulation(struct mxl111sf_demod_state *state,
          enum fe_modulation *modulation)
{
 u8 val;
 int ret = mxl111sf_demod_read_reg(state, V6_MODORDER_TPS_REG, &val);

 if (mxl_fail(ret))
  goto fail;

 switch ((val & V6_PARAM_CONSTELLATION_MASK) >> 4) {
 case 0:
  *modulation = QPSK;
  break;
 case 1:
  *modulation = QAM_16;
  break;
 case 2:
  *modulation = QAM_64;
  break;
 }
fail:
 return ret;
}
