
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ vft_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; int flags2; struct ixgbe_hw hw; } ;


 int IXGBE_FLAG2_VLAN_PROMISC ;
 int IXGBE_FLAG_VMDQ_ENABLED ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VLNCTRL ;
 scalar_t__ IXGBE_VLNCTRL_VFE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 scalar_t__ VFTA_BLOCK_SIZE ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_scrub_vfta (struct ixgbe_adapter*,scalar_t__) ;

__attribute__((used)) static void ixgbe_vlan_promisc_disable(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vlnctrl, i;


 vlnctrl = IXGBE_READ_REG(hw, IXGBE_VLNCTRL);
 vlnctrl |= IXGBE_VLNCTRL_VFE;
 IXGBE_WRITE_REG(hw, IXGBE_VLNCTRL, vlnctrl);

 if (!(adapter->flags & IXGBE_FLAG_VMDQ_ENABLED) ||
     hw->mac.type == ixgbe_mac_82598EB)
  return;


 if (!(adapter->flags2 & IXGBE_FLAG2_VLAN_PROMISC))
  return;


 adapter->flags2 &= ~IXGBE_FLAG2_VLAN_PROMISC;

 for (i = 0; i < hw->mac.vft_size; i += VFTA_BLOCK_SIZE)
  ixgbe_scrub_vfta(adapter, i);
}
