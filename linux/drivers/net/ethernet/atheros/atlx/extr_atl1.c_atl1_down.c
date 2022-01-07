
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* cmb; } ;
struct atl1_adapter {int phy_timer_pending; int link_duplex; int link_speed; TYPE_2__ cmb; int hw; TYPE_3__* pdev; int phy_config_timer; int napi; struct net_device* netdev; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_4__ {scalar_t__ int_stats; } ;


 int SPEED_0 ;
 int atl1_clean_rx_ring (struct atl1_adapter*) ;
 int atl1_clean_tx_ring (struct atl1_adapter*) ;
 int atl1_reset_hw (int *) ;
 int atlx_irq_disable (struct atl1_adapter*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_disable_msi (TYPE_3__*) ;

__attribute__((used)) static void atl1_down(struct atl1_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 napi_disable(&adapter->napi);
 netif_stop_queue(netdev);
 del_timer_sync(&adapter->phy_config_timer);
 adapter->phy_timer_pending = 0;

 atlx_irq_disable(adapter);
 free_irq(adapter->pdev->irq, netdev);
 pci_disable_msi(adapter->pdev);
 atl1_reset_hw(&adapter->hw);
 adapter->cmb.cmb->int_stats = 0;

 adapter->link_speed = SPEED_0;
 adapter->link_duplex = -1;
 netif_carrier_off(netdev);

 atl1_clean_tx_ring(adapter);
 atl1_clean_rx_ring(adapter);
}
