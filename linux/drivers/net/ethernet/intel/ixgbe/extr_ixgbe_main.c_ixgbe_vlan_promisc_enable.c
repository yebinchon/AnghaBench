
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; int vft_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; int flags2; struct ixgbe_hw hw; } ;


 int BIT (int) ;
 int IXGBE_FLAG2_VLAN_PROMISC ;
 int IXGBE_FLAG_VMDQ_ENABLED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int) ;
 int IXGBE_VFTA (int) ;
 int IXGBE_VLNCTRL ;
 int IXGBE_VLNCTRL_VFE ;
 int IXGBE_VLVFB (int) ;
 int IXGBE_VLVF_ENTRIES ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int,unsigned int) ;
 int VMDQ_P (int ) ;
 scalar_t__ ixgbe_mac_82598EB ;

__attribute__((used)) static void ixgbe_vlan_promisc_enable(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vlnctrl, i;

 vlnctrl = IXGBE_READ_REG(hw, IXGBE_VLNCTRL);

 if (adapter->flags & IXGBE_FLAG_VMDQ_ENABLED) {

  vlnctrl |= IXGBE_VLNCTRL_VFE;
  IXGBE_WRITE_REG(hw, IXGBE_VLNCTRL, vlnctrl);
 } else {
  vlnctrl &= ~IXGBE_VLNCTRL_VFE;
  IXGBE_WRITE_REG(hw, IXGBE_VLNCTRL, vlnctrl);
  return;
 }


 if (hw->mac.type == ixgbe_mac_82598EB)
  return;


 if (adapter->flags2 & IXGBE_FLAG2_VLAN_PROMISC)
  return;


 adapter->flags2 |= IXGBE_FLAG2_VLAN_PROMISC;


 for (i = IXGBE_VLVF_ENTRIES; --i;) {
  u32 reg_offset = IXGBE_VLVFB(i * 2 + VMDQ_P(0) / 32);
  u32 vlvfb = IXGBE_READ_REG(hw, reg_offset);

  vlvfb |= BIT(VMDQ_P(0) % 32);
  IXGBE_WRITE_REG(hw, reg_offset, vlvfb);
 }


 for (i = hw->mac.vft_size; i--;)
  IXGBE_WRITE_REG(hw, IXGBE_VFTA(i), ~0U);
}
