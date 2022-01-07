
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_5__ {int (* set_rlpml ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbevf_adapter {int mbx_lock; TYPE_1__* pdev; scalar_t__ xdp_prog; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int EPERM ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int dev_warn (int *,char*) ;
 int hw_dbg (struct ixgbe_hw*,char*,int,int) ;
 int ixgbevf_reinit_locked (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,int) ;

__attribute__((used)) static int ixgbevf_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN;
 int ret;


 if (adapter->xdp_prog) {
  dev_warn(&adapter->pdev->dev, "MTU cannot be changed while XDP program is loaded\n");
  return -EPERM;
 }

 spin_lock_bh(&adapter->mbx_lock);

 ret = hw->mac.ops.set_rlpml(hw, max_frame);
 spin_unlock_bh(&adapter->mbx_lock);
 if (ret)
  return -EINVAL;

 hw_dbg(hw, "changing MTU from %d to %d\n",
        netdev->mtu, new_mtu);


 netdev->mtu = new_mtu;

 if (netif_running(netdev))
  ixgbevf_reinit_locked(adapter);

 return 0;
}
