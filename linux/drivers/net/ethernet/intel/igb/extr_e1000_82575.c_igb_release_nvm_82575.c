
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* release_swfw_sync ) (struct e1000_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;


 int E1000_SWFW_EEP_SM ;
 int igb_release_nvm (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*,int ) ;

__attribute__((used)) static void igb_release_nvm_82575(struct e1000_hw *hw)
{
 igb_release_nvm(hw);
 hw->mac.ops.release_swfw_sync(hw, E1000_SWFW_EEP_SM);
}
