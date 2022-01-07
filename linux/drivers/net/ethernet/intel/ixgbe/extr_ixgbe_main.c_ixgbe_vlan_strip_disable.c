
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_ring {int reg_idx; int netdev; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int num_rx_queues; struct ixgbe_ring** rx_ring; struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL (int) ;
 int IXGBE_RXDCTL_VME ;
 int IXGBE_VLNCTRL ;
 int IXGBE_VLNCTRL_VME ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;






 int netif_is_ixgbe (int ) ;

__attribute__((used)) static void ixgbe_vlan_strip_disable(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vlnctrl;
 int i, j;

 switch (hw->mac.type) {
 case 133:
  vlnctrl = IXGBE_READ_REG(hw, IXGBE_VLNCTRL);
  vlnctrl &= ~IXGBE_VLNCTRL_VME;
  IXGBE_WRITE_REG(hw, IXGBE_VLNCTRL, vlnctrl);
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  for (i = 0; i < adapter->num_rx_queues; i++) {
   struct ixgbe_ring *ring = adapter->rx_ring[i];

   if (!netif_is_ixgbe(ring->netdev))
    continue;

   j = ring->reg_idx;
   vlnctrl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(j));
   vlnctrl &= ~IXGBE_RXDCTL_VME;
   IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(j), vlnctrl);
  }
  break;
 default:
  break;
 }
}
