
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl2_adapter {int link_duplex; int link_speed; int cfg_phy; int phy_config_timer; int watchdog_timer; int hw; int flags; struct net_device* netdev; } ;


 int SPEED_0 ;
 int __ATL2_DOWN ;
 int atl2_irq_disable (struct atl2_adapter*) ;
 int atl2_reset_hw (int *) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int msleep (int) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void atl2_down(struct atl2_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;



 set_bit(__ATL2_DOWN, &adapter->flags);

 netif_tx_disable(netdev);


 atl2_reset_hw(&adapter->hw);
 msleep(1);

 atl2_irq_disable(adapter);

 del_timer_sync(&adapter->watchdog_timer);
 del_timer_sync(&adapter->phy_config_timer);
 clear_bit(0, &adapter->cfg_phy);

 netif_carrier_off(netdev);
 adapter->link_speed = SPEED_0;
 adapter->link_duplex = -1;
}
