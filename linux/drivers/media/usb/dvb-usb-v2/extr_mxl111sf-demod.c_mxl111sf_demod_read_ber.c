
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mxl111sf_demod_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; } ;


 int CALCULATE_BER (int,int) ;
 int V6_N_ACCUMULATE_REG ;
 int V6_RS_AVG_ERRORS_LSB_REG ;
 int V6_RS_AVG_ERRORS_MSB_REG ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl111sf_demod_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct mxl111sf_demod_state *state = fe->demodulator_priv;
 u8 val1, val2, val3;
 int ret;

 *ber = 0;

 ret = mxl111sf_demod_read_reg(state, V6_RS_AVG_ERRORS_LSB_REG, &val1);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_demod_read_reg(state, V6_RS_AVG_ERRORS_MSB_REG, &val2);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_demod_read_reg(state, V6_N_ACCUMULATE_REG, &val3);
 if (mxl_fail(ret))
  goto fail;

 *ber = CALCULATE_BER((val1 | (val2 << 8)), val3);
fail:
 return ret;
}
