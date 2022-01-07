
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adapter {struct net_device** port; } ;


 scalar_t__ cxgb4_dcb_enabled (struct net_device*) ;
 int cxgb4_dcb_reset (struct net_device*) ;
 int dcb_tx_queue_prio_enable (struct net_device*,int) ;
 int link_report (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

void t4_os_link_changed(struct adapter *adapter, int port_id, int link_stat)
{
 struct net_device *dev = adapter->port[port_id];


 if (netif_running(dev) && link_stat != netif_carrier_ok(dev)) {
  if (link_stat)
   netif_carrier_on(dev);
  else {






   netif_carrier_off(dev);
  }

  link_report(dev);
 }
}
