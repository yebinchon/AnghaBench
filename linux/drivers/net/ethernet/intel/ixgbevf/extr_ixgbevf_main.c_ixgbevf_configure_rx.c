
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {scalar_t__ mtu; } ;
struct ixgbevf_ring {int dummy; } ;
struct TYPE_4__ {int (* set_rlpml ) (struct ixgbe_hw*,scalar_t__) ;} ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int num_rx_queues; struct ixgbevf_ring** rx_ring; TYPE_3__* pdev; int mbx_lock; struct net_device* netdev; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ ixgbe_mac_X550_vf ;
 int ixgbevf_configure_rx_ring (struct ixgbevf_adapter*,struct ixgbevf_ring*) ;
 int ixgbevf_set_rx_buffer_len (struct ixgbevf_adapter*,struct ixgbevf_ring*) ;
 int ixgbevf_setup_psrtype (struct ixgbevf_adapter*) ;
 int ixgbevf_setup_vfmrqc (struct ixgbevf_adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,scalar_t__) ;

__attribute__((used)) static void ixgbevf_configure_rx(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 int i, ret;

 ixgbevf_setup_psrtype(adapter);
 if (hw->mac.type >= ixgbe_mac_X550_vf)
  ixgbevf_setup_vfmrqc(adapter);

 spin_lock_bh(&adapter->mbx_lock);

 ret = hw->mac.ops.set_rlpml(hw, netdev->mtu + ETH_HLEN + ETH_FCS_LEN);
 spin_unlock_bh(&adapter->mbx_lock);
 if (ret)
  dev_err(&adapter->pdev->dev,
   "Failed to set MTU at %d\n", netdev->mtu);




 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct ixgbevf_ring *rx_ring = adapter->rx_ring[i];

  ixgbevf_set_rx_buffer_len(adapter, rx_ring);
  ixgbevf_configure_rx_ring(adapter, rx_ring);
 }
}
