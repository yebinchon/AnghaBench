
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mxl111sf_demod_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; } ;


 int V6_FEC_PER_COUNT_REG ;
 int V6_FEC_PER_SCALE_MASK ;
 int V6_FEC_PER_SCALE_REG ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl111sf_demod_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct mxl111sf_demod_state *state = fe->demodulator_priv;
 u32 fec_per_count, fec_per_scale;
 u8 val;
 int ret;

 *ucblocks = 0;


 ret = mxl111sf_demod_read_reg(state, V6_FEC_PER_COUNT_REG, &val);
 if (mxl_fail(ret))
  goto fail;

 fec_per_count = val;


 ret = mxl111sf_demod_read_reg(state, V6_FEC_PER_SCALE_REG, &val);
 if (mxl_fail(ret))
  goto fail;

 val &= V6_FEC_PER_SCALE_MASK;
 val *= 4;

 fec_per_scale = 1 << val;

 fec_per_count *= fec_per_scale;

 *ucblocks = fec_per_count;
fail:
 return ret;
}
