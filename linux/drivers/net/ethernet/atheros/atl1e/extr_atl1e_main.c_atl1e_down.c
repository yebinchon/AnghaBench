
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1e_adapter {int link_duplex; int link_speed; int napi; int hw; int flags; struct net_device* netdev; } ;


 int SPEED_0 ;
 int __AT_DOWN ;
 int atl1e_clean_rx_ring (struct atl1e_adapter*) ;
 int atl1e_clean_tx_ring (struct atl1e_adapter*) ;
 int atl1e_del_timer (struct atl1e_adapter*) ;
 int atl1e_irq_disable (struct atl1e_adapter*) ;
 int atl1e_reset_hw (int *) ;
 int msleep (int) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int set_bit (int ,int *) ;

void atl1e_down(struct atl1e_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;



 set_bit(__AT_DOWN, &adapter->flags);

 netif_stop_queue(netdev);


 atl1e_reset_hw(&adapter->hw);
 msleep(1);

 napi_disable(&adapter->napi);
 atl1e_del_timer(adapter);
 atl1e_irq_disable(adapter);

 netif_carrier_off(netdev);
 adapter->link_speed = SPEED_0;
 adapter->link_duplex = -1;
 atl1e_clean_tx_ring(adapter);
 atl1e_clean_rx_ring(adapter);
}
