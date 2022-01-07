
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int net; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int PACKET_TYPE_ALL_MULTICAST ;
 int PACKET_TYPE_BROADCAST ;
 int PACKET_TYPE_DIRECTED ;
 int PACKET_TYPE_PROMISCUOUS ;
 int SET_ETHERNET_PACKET_FILTER ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int netdev_dbg (int ,char*) ;
 int netdev_info (int ,char*) ;
 int netdev_mc_empty (struct net_device*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int usbnet_write_cmd_async (struct usbnet*,int ,int,int,int ,int *,int ) ;

__attribute__((used)) static void int51x1_set_multicast(struct net_device *netdev)
{
 struct usbnet *dev = netdev_priv(netdev);
 u16 filter = PACKET_TYPE_DIRECTED | PACKET_TYPE_BROADCAST;

 if (netdev->flags & IFF_PROMISC) {

  filter |= PACKET_TYPE_PROMISCUOUS;
  netdev_info(dev->net, "promiscuous mode enabled\n");
 } else if (!netdev_mc_empty(netdev) ||
    (netdev->flags & IFF_ALLMULTI)) {
  filter |= PACKET_TYPE_ALL_MULTICAST;
  netdev_dbg(dev->net, "receive all multicast enabled\n");
 } else {

  netdev_dbg(dev->net, "receive own packets only\n");
 }

 usbnet_write_cmd_async(dev, SET_ETHERNET_PACKET_FILTER,
          USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
          filter, 0, ((void*)0), 0);
}
