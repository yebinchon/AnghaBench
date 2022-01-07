
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_demod_state {int dummy; } ;


 int IRQ_MASK_FEC_LOCK ;
 int V6_IRQ_STATUS_REG ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static
int mxl1x1sf_demod_get_fec_lock_status(struct mxl111sf_demod_state *state,
           int *fec_lock)
{
 u8 val = 0;
 int ret = mxl111sf_demod_read_reg(state, V6_IRQ_STATUS_REG, &val);
 if (mxl_fail(ret))
  goto fail;
 *fec_lock = (val & IRQ_MASK_FEC_LOCK) >> 4;
fail:
 return ret;
}
