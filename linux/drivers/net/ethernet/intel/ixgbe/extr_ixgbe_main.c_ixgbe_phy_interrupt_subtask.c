
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ (* handle_lasi ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct ixgbe_adapter {int flags2; struct ixgbe_hw hw; } ;


 scalar_t__ IXGBE_ERR_OVERTEMP ;
 int IXGBE_FLAG2_PHY_INTERRUPT ;
 int drv ;
 int e_crit (int ,char*,int ) ;
 int ixgbe_overheat_msg ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 status;

 if (!(adapter->flags2 & IXGBE_FLAG2_PHY_INTERRUPT))
  return;

 adapter->flags2 &= ~IXGBE_FLAG2_PHY_INTERRUPT;

 if (!hw->phy.ops.handle_lasi)
  return;

 status = hw->phy.ops.handle_lasi(&adapter->hw);
 if (status != IXGBE_ERR_OVERTEMP)
  return;

 e_crit(drv, "%s\n", ixgbe_overheat_msg);
}
