
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1c_adapter {int link_duplex; int link_speed; int hw; int napi; int flags; scalar_t__ work_event; struct net_device* netdev; } ;


 int SPEED_0 ;
 int __AT_DOWN ;
 int atl1c_del_timer (struct atl1c_adapter*) ;
 int atl1c_disable_l0s_l1 (int *) ;
 int atl1c_free_irq (struct atl1c_adapter*) ;
 int atl1c_irq_disable (struct atl1c_adapter*) ;
 int atl1c_reset_dma_ring (struct atl1c_adapter*) ;
 int atl1c_reset_mac (int *) ;
 int msleep (int) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void atl1c_down(struct atl1c_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 atl1c_del_timer(adapter);
 adapter->work_event = 0;


 set_bit(__AT_DOWN, &adapter->flags);
 netif_carrier_off(netdev);
 napi_disable(&adapter->napi);
 atl1c_irq_disable(adapter);
 atl1c_free_irq(adapter);

 atl1c_disable_l0s_l1(&adapter->hw);

 atl1c_reset_mac(&adapter->hw);
 msleep(1);

 adapter->link_speed = SPEED_0;
 adapter->link_duplex = -1;
 atl1c_reset_dma_ring(adapter);
}
