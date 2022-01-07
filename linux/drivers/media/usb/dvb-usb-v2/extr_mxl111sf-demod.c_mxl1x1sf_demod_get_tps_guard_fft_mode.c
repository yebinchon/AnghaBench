
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_demod_state {int dummy; } ;
typedef enum fe_transmit_mode { ____Placeholder_fe_transmit_mode } fe_transmit_mode ;


 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_4K ;
 int TRANSMISSION_MODE_8K ;
 int V6_MODE_TPS_REG ;
 int V6_PARAM_FFT_MODE_MASK ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static
int mxl1x1sf_demod_get_tps_guard_fft_mode(struct mxl111sf_demod_state *state,
       enum fe_transmit_mode *fft_mode)
{
 u8 val;
 int ret = mxl111sf_demod_read_reg(state, V6_MODE_TPS_REG, &val);

 if (mxl_fail(ret))
  goto fail;

 switch ((val & V6_PARAM_FFT_MODE_MASK) >> 2) {
 case 0:
  *fft_mode = TRANSMISSION_MODE_2K;
  break;
 case 1:
  *fft_mode = TRANSMISSION_MODE_8K;
  break;
 case 2:
  *fft_mode = TRANSMISSION_MODE_4K;
  break;
 }
fail:
 return ret;
}
