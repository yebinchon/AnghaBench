
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {TYPE_1__* rx_ring; int tx_ring; scalar_t__ link_duplex; scalar_t__ link_speed; int watchdog_timer; int state; struct e1000_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int napi; } ;


 int E1000_RXDCTL_QUEUE_ENABLE ;
 int E1000_TXDCTL_QUEUE_ENABLE ;
 int RXDCTL (int ) ;
 int TXDCTL (int ) ;
 int __IGBVF_DOWN ;
 int del_timer_sync (int *) ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int igbvf_clean_rx_ring (TYPE_1__*) ;
 int igbvf_clean_tx_ring (int ) ;
 int igbvf_irq_disable (struct igbvf_adapter*) ;
 int igbvf_reset (struct igbvf_adapter*) ;
 int igbvf_update_stats (struct igbvf_adapter*) ;
 int msleep (int) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int set_bit (int ,int *) ;

void igbvf_down(struct igbvf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 u32 rxdctl, txdctl;




 set_bit(__IGBVF_DOWN, &adapter->state);


 rxdctl = er32(RXDCTL(0));
 ew32(RXDCTL(0), rxdctl & ~E1000_RXDCTL_QUEUE_ENABLE);

 netif_carrier_off(netdev);
 netif_stop_queue(netdev);


 txdctl = er32(TXDCTL(0));
 ew32(TXDCTL(0), txdctl & ~E1000_TXDCTL_QUEUE_ENABLE);


 e1e_flush();
 msleep(10);

 napi_disable(&adapter->rx_ring->napi);

 igbvf_irq_disable(adapter);

 del_timer_sync(&adapter->watchdog_timer);


 igbvf_update_stats(adapter);

 adapter->link_speed = 0;
 adapter->link_duplex = 0;

 igbvf_reset(adapter);
 igbvf_clean_tx_ring(adapter->tx_ring);
 igbvf_clean_rx_ring(adapter->rx_ring);
}
