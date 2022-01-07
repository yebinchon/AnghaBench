
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* set_vfta ) (struct ixgbe_hw*,int ,int ,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags2; int active_vlans; struct ixgbe_hw hw; } ;
typedef int __be16 ;


 int IXGBE_FLAG2_VLAN_PROMISC ;
 int VMDQ_P (int ) ;
 int clear_bit (int ,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int,int) ;

__attribute__((used)) static int ixgbe_vlan_rx_kill_vid(struct net_device *netdev,
      __be16 proto, u16 vid)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;


 if (vid && !(adapter->flags2 & IXGBE_FLAG2_VLAN_PROMISC))
  hw->mac.ops.set_vfta(hw, vid, VMDQ_P(0), 0, 1);

 clear_bit(vid, adapter->active_vlans);

 return 0;
}
