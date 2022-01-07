
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mxl111sf_demod_state {int dummy; } ;


 int CALCULATE_SNR (int) ;
 int V6_SNR_RB_LSB_REG ;
 int V6_SNR_RB_MSB_REG ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl111sf_demod_calc_snr(struct mxl111sf_demod_state *state,
       u16 *snr)
{
 u8 val1, val2;
 int ret;

 *snr = 0;

 ret = mxl111sf_demod_read_reg(state, V6_SNR_RB_LSB_REG, &val1);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_demod_read_reg(state, V6_SNR_RB_MSB_REG, &val2);
 if (mxl_fail(ret))
  goto fail;

 *snr = CALCULATE_SNR(val1 | ((val2 & 0x03) << 8));
fail:
 return ret;
}
