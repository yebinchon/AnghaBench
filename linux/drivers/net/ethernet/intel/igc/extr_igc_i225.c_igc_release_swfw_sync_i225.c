
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct igc_hw {int dummy; } ;


 int IGC_SW_FW_SYNC ;
 scalar_t__ igc_get_hw_semaphore_i225 (struct igc_hw*) ;
 int igc_put_hw_semaphore (struct igc_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

void igc_release_swfw_sync_i225(struct igc_hw *hw, u16 mask)
{
 u32 swfw_sync;

 while (igc_get_hw_semaphore_i225(hw))
  ;

 swfw_sync = rd32(IGC_SW_FW_SYNC);
 swfw_sync &= ~mask;
 wr32(IGC_SW_FW_SYNC, swfw_sync);

 igc_put_hw_semaphore(hw);
}
