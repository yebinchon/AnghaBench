
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {TYPE_1__* adapter; } ;
typedef int s32 ;
struct TYPE_2__ {int state; } ;


 int E1000_ERR_CONFIG ;
 int E1000_ERR_PHY ;
 int E1000_EXTCNF_CTRL_SWFLAG ;
 int EXTCNF_CTRL ;
 int FWSM ;
 int PHY_CFG_TIMEOUT ;
 int SW_FLAG_TIMEOUT ;
 int __E1000_ACCESS_SHARED_RESOURCE ;
 int clear_bit (int ,int *) ;
 int e_dbg (char*,...) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int mdelay (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static s32 e1000_acquire_swflag_ich8lan(struct e1000_hw *hw)
{
 u32 extcnf_ctrl, timeout = PHY_CFG_TIMEOUT;
 s32 ret_val = 0;

 if (test_and_set_bit(__E1000_ACCESS_SHARED_RESOURCE,
        &hw->adapter->state)) {
  e_dbg("contention for Phy access\n");
  return -E1000_ERR_PHY;
 }

 while (timeout) {
  extcnf_ctrl = er32(EXTCNF_CTRL);
  if (!(extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG))
   break;

  mdelay(1);
  timeout--;
 }

 if (!timeout) {
  e_dbg("SW has already locked the resource.\n");
  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }

 timeout = SW_FLAG_TIMEOUT;

 extcnf_ctrl |= E1000_EXTCNF_CTRL_SWFLAG;
 ew32(EXTCNF_CTRL, extcnf_ctrl);

 while (timeout) {
  extcnf_ctrl = er32(EXTCNF_CTRL);
  if (extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG)
   break;

  mdelay(1);
  timeout--;
 }

 if (!timeout) {
  e_dbg("Failed to acquire the semaphore, FW or HW has it: FWSM=0x%8.8x EXTCNF_CTRL=0x%8.8x)\n",
        er32(FWSM), extcnf_ctrl);
  extcnf_ctrl &= ~E1000_EXTCNF_CTRL_SWFLAG;
  ew32(EXTCNF_CTRL, extcnf_ctrl);
  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }

out:
 if (ret_val)
  clear_bit(__E1000_ACCESS_SHARED_RESOURCE, &hw->adapter->state);

 return ret_val;
}
