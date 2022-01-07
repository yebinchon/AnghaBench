
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_info (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int nv_start_rx (struct net_device*) ;
 int nv_stop_rx (struct net_device*) ;
 int nv_txrx_gate (struct net_device*,int) ;
 scalar_t__ nv_update_linkspeed (struct net_device*) ;

__attribute__((used)) static void nv_linkchange(struct net_device *dev)
{
 if (nv_update_linkspeed(dev)) {
  if (!netif_carrier_ok(dev)) {
   netif_carrier_on(dev);
   netdev_info(dev, "link up\n");
   nv_txrx_gate(dev, 0);
   nv_start_rx(dev);
  }
 } else {
  if (netif_carrier_ok(dev)) {
   netif_carrier_off(dev);
   netdev_info(dev, "link down\n");
   nv_txrx_gate(dev, 1);
   nv_stop_rx(dev);
  }
 }
}
