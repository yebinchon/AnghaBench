
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ath6kl_vif {int flags; } ;


 int CONNECTED ;
 int WLAN_ENABLED ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_open(struct net_device *dev)
{
 struct ath6kl_vif *vif = netdev_priv(dev);

 set_bit(WLAN_ENABLED, &vif->flags);

 if (test_bit(CONNECTED, &vif->flags)) {
  netif_carrier_on(dev);
  netif_wake_queue(dev);
 } else {
  netif_carrier_off(dev);
 }

 return 0;
}
