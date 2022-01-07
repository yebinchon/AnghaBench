
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int num_xdp_queues; int pdev; TYPE_2__** xdp_ring; TYPE_1__** tx_ring; int service_timer; int * rx_ring; int state; struct ixgbe_hw hw; struct net_device* netdev; } ;
struct TYPE_4__ {int reg_idx; } ;
struct TYPE_3__ {int reg_idx; } ;


 int IXGBE_TXDCTL_SWFLSH ;
 int IXGBE_VFTXDCTL (int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int __IXGBEVF_DOWN ;
 int del_timer_sync (int *) ;
 int ixgbevf_clean_all_rx_rings (struct ixgbevf_adapter*) ;
 int ixgbevf_clean_all_tx_rings (struct ixgbevf_adapter*) ;
 int ixgbevf_disable_rx_queue (struct ixgbevf_adapter*,int ) ;
 int ixgbevf_irq_disable (struct ixgbevf_adapter*) ;
 int ixgbevf_napi_disable_all (struct ixgbevf_adapter*) ;
 int ixgbevf_reset (struct ixgbevf_adapter*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int pci_channel_offline (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void ixgbevf_down(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 int i;


 if (test_and_set_bit(__IXGBEVF_DOWN, &adapter->state))
  return;


 for (i = 0; i < adapter->num_rx_queues; i++)
  ixgbevf_disable_rx_queue(adapter, adapter->rx_ring[i]);

 usleep_range(10000, 20000);

 netif_tx_stop_all_queues(netdev);


 netif_carrier_off(netdev);
 netif_tx_disable(netdev);

 ixgbevf_irq_disable(adapter);

 ixgbevf_napi_disable_all(adapter);

 del_timer_sync(&adapter->service_timer);


 for (i = 0; i < adapter->num_tx_queues; i++) {
  u8 reg_idx = adapter->tx_ring[i]->reg_idx;

  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(reg_idx),
    IXGBE_TXDCTL_SWFLSH);
 }

 for (i = 0; i < adapter->num_xdp_queues; i++) {
  u8 reg_idx = adapter->xdp_ring[i]->reg_idx;

  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(reg_idx),
    IXGBE_TXDCTL_SWFLSH);
 }

 if (!pci_channel_offline(adapter->pdev))
  ixgbevf_reset(adapter);

 ixgbevf_clean_all_tx_rings(adapter);
 ixgbevf_clean_all_rx_rings(adapter);
}
