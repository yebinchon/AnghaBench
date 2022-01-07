
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int (* update_mc_addr_list ) (struct ixgbe_hw*,struct net_device*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int ENOMEM ;
 int ixgbe_restore_vf_multicasts (struct ixgbe_adapter*) ;
 int netdev_mc_count (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,struct net_device*) ;

__attribute__((used)) static int ixgbe_write_mc_addr_list(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (!netif_running(netdev))
  return 0;

 if (hw->mac.ops.update_mc_addr_list)
  hw->mac.ops.update_mc_addr_list(hw, netdev);
 else
  return -ENOMEM;





 return netdev_mc_count(netdev);
}
