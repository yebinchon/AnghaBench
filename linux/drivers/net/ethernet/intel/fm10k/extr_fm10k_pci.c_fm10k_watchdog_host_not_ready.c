
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fm10k_intfc {struct net_device* netdev; } ;


 int drv ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_info (struct fm10k_intfc*,int ,struct net_device*,char*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;

__attribute__((used)) static void fm10k_watchdog_host_not_ready(struct fm10k_intfc *interface)
{
 struct net_device *netdev = interface->netdev;


 if (!netif_carrier_ok(netdev))
  return;

 netif_info(interface, drv, netdev, "NIC Link is down\n");

 netif_carrier_off(netdev);
 netif_tx_stop_all_queues(netdev);
}
