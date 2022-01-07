
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ link_duplex; scalar_t__ link_speed; int napi; struct net_device* netdev; struct e1000_hw hw; } ;


 int E1000_RCTL_EN ;
 int E1000_TCTL_EN ;
 int E1000_WRITE_FLUSH () ;
 int RCTL ;
 int TCTL ;
 int e1000_clean_all_rx_rings (struct e1000_adapter*) ;
 int e1000_clean_all_tx_rings (struct e1000_adapter*) ;
 int e1000_down_and_stop (struct e1000_adapter*) ;
 int e1000_irq_disable (struct e1000_adapter*) ;
 int e1000_reset (struct e1000_adapter*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;

void e1000_down(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 u32 rctl, tctl;


 rctl = er32(RCTL);
 ew32(RCTL, rctl & ~E1000_RCTL_EN);


 netif_tx_disable(netdev);


 tctl = er32(TCTL);
 tctl &= ~E1000_TCTL_EN;
 ew32(TCTL, tctl);

 E1000_WRITE_FLUSH();
 msleep(10);
 netif_carrier_off(netdev);

 napi_disable(&adapter->napi);

 e1000_irq_disable(adapter);





 e1000_down_and_stop(adapter);

 adapter->link_speed = 0;
 adapter->link_duplex = 0;

 e1000_reset(adapter);
 e1000_clean_all_tx_rings(adapter);
 e1000_clean_all_rx_rings(adapter);
}
