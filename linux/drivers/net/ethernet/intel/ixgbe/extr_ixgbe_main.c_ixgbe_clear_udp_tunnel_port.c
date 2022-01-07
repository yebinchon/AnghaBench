
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int flags; scalar_t__ geneve_port; scalar_t__ vxlan_port; struct ixgbe_hw hw; } ;


 int IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE ;
 int IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VXLANCTRL ;
 int IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK ;
 int IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbe_clear_udp_tunnel_port(struct ixgbe_adapter *adapter, u32 mask)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vxlanctrl;

 if (!(adapter->flags & (IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE |
    IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE)))
  return;

 vxlanctrl = IXGBE_READ_REG(hw, IXGBE_VXLANCTRL) & ~mask;
 IXGBE_WRITE_REG(hw, IXGBE_VXLANCTRL, vxlanctrl);

 if (mask & IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK)
  adapter->vxlan_port = 0;

 if (mask & IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK)
  adapter->geneve_port = 0;
}
