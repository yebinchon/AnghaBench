
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* release_swfw_sync ) (struct igc_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_2__ mac; } ;


 int IGC_SWFW_PHY0_SM ;
 int stub1 (struct igc_hw*,int ) ;

__attribute__((used)) static void igc_release_phy_base(struct igc_hw *hw)
{
 u16 mask = IGC_SWFW_PHY0_SM;

 hw->mac.ops.release_swfw_sync(hw, mask);
}
