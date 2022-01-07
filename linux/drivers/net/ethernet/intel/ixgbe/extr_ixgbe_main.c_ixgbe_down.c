
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int (* disable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {int num_vfs; int pdev; TYPE_1__* vfinfo; struct ixgbe_hw hw; int service_timer; int flags; int flags2; int state; scalar_t__* xdp_ring; struct net_device* netdev; } ;
struct TYPE_4__ {int clear_to_send; } ;


 int IXGBE_EITRSEL ;
 int IXGBE_FLAG2_FDIR_REQUIRES_REINIT ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int __IXGBE_DOWN ;
 int __IXGBE_RESET_REQUESTED ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int ixgbe_clean_all_rx_rings (struct ixgbe_adapter*) ;
 int ixgbe_clean_all_tx_rings (struct ixgbe_adapter*) ;
 int ixgbe_disable_rx (struct ixgbe_adapter*) ;
 int ixgbe_disable_tx (struct ixgbe_adapter*) ;
 int ixgbe_disable_tx_rx (struct ixgbe_adapter*) ;
 int ixgbe_irq_disable (struct ixgbe_adapter*) ;
 int ixgbe_napi_disable_all (struct ixgbe_adapter*) ;
 int ixgbe_ping_all_vfs (struct ixgbe_adapter*) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int pci_channel_offline (int ) ;
 int stub1 (struct ixgbe_hw*) ;
 int synchronize_rcu () ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void ixgbe_down(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 int i;


 if (test_and_set_bit(__IXGBE_DOWN, &adapter->state))
  return;


 netif_tx_stop_all_queues(netdev);


 netif_carrier_off(netdev);
 netif_tx_disable(netdev);


 ixgbe_disable_rx(adapter);


 if (adapter->xdp_ring[0])
  synchronize_rcu();

 ixgbe_irq_disable(adapter);

 ixgbe_napi_disable_all(adapter);

 clear_bit(__IXGBE_RESET_REQUESTED, &adapter->state);
 adapter->flags2 &= ~IXGBE_FLAG2_FDIR_REQUIRES_REINIT;
 adapter->flags &= ~IXGBE_FLAG_NEED_LINK_UPDATE;

 del_timer_sync(&adapter->service_timer);

 if (adapter->num_vfs) {

  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EITRSEL, 0);


  for (i = 0 ; i < adapter->num_vfs; i++)
   adapter->vfinfo[i].clear_to_send = 0;


  ixgbe_ping_all_vfs(adapter);


  ixgbe_disable_tx_rx(adapter);
 }


 ixgbe_disable_tx(adapter);

 if (!pci_channel_offline(adapter->pdev))
  ixgbe_reset(adapter);


 if (hw->mac.ops.disable_tx_laser)
  hw->mac.ops.disable_tx_laser(hw);

 ixgbe_clean_all_tx_rings(adapter);
 ixgbe_clean_all_rx_rings(adapter);
}
