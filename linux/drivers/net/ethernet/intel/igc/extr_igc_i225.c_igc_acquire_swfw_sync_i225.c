
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct igc_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IGC_ERR_SWFW_SYNC ;
 int IGC_SW_FW_SYNC ;
 int hw_dbg (char*) ;
 scalar_t__ igc_get_hw_semaphore_i225 (struct igc_hw*) ;
 int igc_put_hw_semaphore (struct igc_hw*) ;
 int mdelay (int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

s32 igc_acquire_swfw_sync_i225(struct igc_hw *hw, u16 mask)
{
 s32 i = 0, timeout = 200;
 u32 fwmask = mask << 16;
 u32 swmask = mask;
 s32 ret_val = 0;
 u32 swfw_sync;

 while (i < timeout) {
  if (igc_get_hw_semaphore_i225(hw)) {
   ret_val = -IGC_ERR_SWFW_SYNC;
   goto out;
  }

  swfw_sync = rd32(IGC_SW_FW_SYNC);
  if (!(swfw_sync & (fwmask | swmask)))
   break;


  igc_put_hw_semaphore(hw);
  mdelay(5);
  i++;
 }

 if (i == timeout) {
  hw_dbg("Driver can't access resource, SW_FW_SYNC timeout.\n");
  ret_val = -IGC_ERR_SWFW_SYNC;
  goto out;
 }

 swfw_sync |= swmask;
 wr32(IGC_SW_FW_SYNC, swfw_sync);

 igc_put_hw_semaphore(hw);
out:
 return ret_val;
}
