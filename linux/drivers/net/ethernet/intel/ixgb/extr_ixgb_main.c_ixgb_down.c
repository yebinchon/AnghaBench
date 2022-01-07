
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgb_adapter {scalar_t__ link_duplex; scalar_t__ link_speed; int watchdog_timer; TYPE_1__* pdev; scalar_t__ have_msi; int napi; int flags; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;


 int __IXGB_DOWN ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int ixgb_clean_rx_ring (struct ixgb_adapter*) ;
 int ixgb_clean_tx_ring (struct ixgb_adapter*) ;
 int ixgb_irq_disable (struct ixgb_adapter*) ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_disable_msi (TYPE_1__*) ;
 int set_bit (int ,int *) ;

void
ixgb_down(struct ixgb_adapter *adapter, bool kill_watchdog)
{
 struct net_device *netdev = adapter->netdev;


 set_bit(__IXGB_DOWN, &adapter->flags);

 netif_carrier_off(netdev);

 napi_disable(&adapter->napi);

 ixgb_irq_disable(adapter);
 free_irq(adapter->pdev->irq, netdev);

 if (adapter->have_msi)
  pci_disable_msi(adapter->pdev);

 if (kill_watchdog)
  del_timer_sync(&adapter->watchdog_timer);

 adapter->link_speed = 0;
 adapter->link_duplex = 0;
 netif_stop_queue(netdev);

 ixgb_reset(adapter);
 ixgb_clean_tx_ring(adapter);
 ixgb_clean_rx_ring(adapter);
}
