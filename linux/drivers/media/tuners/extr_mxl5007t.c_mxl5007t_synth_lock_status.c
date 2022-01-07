
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl5007t_state {int dummy; } ;


 int mxl5007t_read_reg (struct mxl5007t_state*,int,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl5007t_synth_lock_status(struct mxl5007t_state *state,
          int *rf_locked, int *ref_locked)
{
 u8 d;
 int ret;

 *rf_locked = 0;
 *ref_locked = 0;

 ret = mxl5007t_read_reg(state, 0xd8, &d);
 if (mxl_fail(ret))
  goto fail;

 if ((d & 0x0c) == 0x0c)
  *rf_locked = 1;

 if ((d & 0x03) == 0x03)
  *ref_locked = 1;
fail:
 return ret;
}
