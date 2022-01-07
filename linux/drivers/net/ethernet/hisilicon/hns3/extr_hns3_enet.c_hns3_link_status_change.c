
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;


 int netdev_info (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_msg_link (struct hnae3_handle*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;

__attribute__((used)) static void hns3_link_status_change(struct hnae3_handle *handle, bool linkup)
{
 struct net_device *netdev = handle->kinfo.netdev;

 if (!netdev)
  return;

 if (linkup) {
  netif_carrier_on(netdev);
  netif_tx_wake_all_queues(netdev);
  if (netif_msg_link(handle))
   netdev_info(netdev, "link up\n");
 } else {
  netif_carrier_off(netdev);
  netif_tx_stop_all_queues(netdev);
  if (netif_msg_link(handle))
   netdev_info(netdev, "link down\n");
 }
}
