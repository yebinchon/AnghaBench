
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_SWFW_EEP_SM ;
 int igb_acquire_swfw_sync_i210 (struct e1000_hw*,int ) ;

__attribute__((used)) static s32 igb_acquire_nvm_i210(struct e1000_hw *hw)
{
 return igb_acquire_swfw_sync_i210(hw, E1000_SWFW_EEP_SM);
}
