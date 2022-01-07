
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {unsigned int flags; } ;
struct TYPE_3__ {int (* update_mc_addr_list ) (struct ixgbe_hw*,struct net_device*) ;int (* update_xcast_mode ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int mbx_lock; struct ixgbe_hw hw; } ;


 unsigned int IFF_ALLMULTI ;
 unsigned int IFF_BROADCAST ;
 unsigned int IFF_MULTICAST ;
 unsigned int IFF_PROMISC ;
 int IXGBEVF_XCAST_MODE_ALLMULTI ;
 int IXGBEVF_XCAST_MODE_MULTI ;
 int IXGBEVF_XCAST_MODE_NONE ;
 int IXGBEVF_XCAST_MODE_PROMISC ;
 int ixgbevf_write_uc_addr_list (struct net_device*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,int) ;
 int stub2 (struct ixgbe_hw*,struct net_device*) ;

__attribute__((used)) static void ixgbevf_set_rx_mode(struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 unsigned int flags = netdev->flags;
 int xcast_mode;


 if (flags & IFF_PROMISC)
  xcast_mode = IXGBEVF_XCAST_MODE_PROMISC;
 else if (flags & IFF_ALLMULTI)
  xcast_mode = IXGBEVF_XCAST_MODE_ALLMULTI;
 else if (flags & (IFF_BROADCAST | IFF_MULTICAST))
  xcast_mode = IXGBEVF_XCAST_MODE_MULTI;
 else
  xcast_mode = IXGBEVF_XCAST_MODE_NONE;

 spin_lock_bh(&adapter->mbx_lock);

 hw->mac.ops.update_xcast_mode(hw, xcast_mode);


 hw->mac.ops.update_mc_addr_list(hw, netdev);

 ixgbevf_write_uc_addr_list(netdev);

 spin_unlock_bh(&adapter->mbx_lock);
}
