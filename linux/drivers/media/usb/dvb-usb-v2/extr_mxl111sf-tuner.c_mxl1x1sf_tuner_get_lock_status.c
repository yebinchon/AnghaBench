
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_tuner_state {int dummy; } ;


 int V6_RF_LOCK_STATUS_REG ;
 int mxl111sf_tuner_read_reg (struct mxl111sf_tuner_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl1x1sf_tuner_get_lock_status(struct mxl111sf_tuner_state *state,
       int *rf_synth_lock,
       int *ref_synth_lock)
{
 int ret;
 u8 data;

 *rf_synth_lock = 0;
 *ref_synth_lock = 0;

 ret = mxl111sf_tuner_read_reg(state, V6_RF_LOCK_STATUS_REG, &data);
 if (mxl_fail(ret))
  goto fail;

 *ref_synth_lock = ((data & 0x03) == 0x03) ? 1 : 0;
 *rf_synth_lock = ((data & 0x0c) == 0x0c) ? 1 : 0;
fail:
 return ret;
}
