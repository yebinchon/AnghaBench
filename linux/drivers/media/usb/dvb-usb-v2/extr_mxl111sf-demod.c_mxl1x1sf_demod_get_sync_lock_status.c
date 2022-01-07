
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_demod_state {int dummy; } ;


 int SYNC_LOCK_MASK ;
 int V6_SYNC_LOCK_REG ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static
int mxl1x1sf_demod_get_sync_lock_status(struct mxl111sf_demod_state *state,
     int *sync_lock)
{
 u8 val = 0;
 int ret = mxl111sf_demod_read_reg(state, V6_SYNC_LOCK_REG, &val);
 if (mxl_fail(ret))
  goto fail;
 *sync_lock = (val & SYNC_LOCK_MASK) >> 4;
fail:
 return ret;
}
