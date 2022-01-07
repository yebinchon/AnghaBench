
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int E1000_SW_FW_SYNC ;
 scalar_t__ igb_get_hw_semaphore_i210 (struct e1000_hw*) ;
 int igb_put_hw_semaphore (struct e1000_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

void igb_release_swfw_sync_i210(struct e1000_hw *hw, u16 mask)
{
 u32 swfw_sync;

 while (igb_get_hw_semaphore_i210(hw))
  ;

 swfw_sync = rd32(E1000_SW_FW_SYNC);
 swfw_sync &= ~mask;
 wr32(E1000_SW_FW_SYNC, swfw_sync);

 igb_put_hw_semaphore(hw);
}
