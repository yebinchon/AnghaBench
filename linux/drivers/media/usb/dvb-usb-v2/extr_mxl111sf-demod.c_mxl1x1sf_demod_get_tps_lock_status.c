
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_demod_state {int dummy; } ;


 int V6_PARAM_TPS_LOCK_MASK ;
 int V6_TPS_LOCK_REG ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static
int mxl1x1sf_demod_get_tps_lock_status(struct mxl111sf_demod_state *state,
           int *tps_lock)
{
 u8 val = 0;
 int ret = mxl111sf_demod_read_reg(state, V6_TPS_LOCK_REG, &val);
 if (mxl_fail(ret))
  goto fail;
 *tps_lock = (val & V6_PARAM_TPS_LOCK_MASK) >> 6;
fail:
 return ret;
}
