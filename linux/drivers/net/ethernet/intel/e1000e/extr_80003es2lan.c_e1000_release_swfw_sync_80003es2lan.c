
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int SW_FW_SYNC ;
 scalar_t__ e1000e_get_hw_semaphore (struct e1000_hw*) ;
 int e1000e_put_hw_semaphore (struct e1000_hw*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void e1000_release_swfw_sync_80003es2lan(struct e1000_hw *hw, u16 mask)
{
 u32 swfw_sync;

 while (e1000e_get_hw_semaphore(hw) != 0)
  ;

 swfw_sync = er32(SW_FW_SYNC);
 swfw_sync &= ~mask;
 ew32(SW_FW_SYNC, swfw_sync);

 e1000e_put_hw_semaphore(hw);
}
