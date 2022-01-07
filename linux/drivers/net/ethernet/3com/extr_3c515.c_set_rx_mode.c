
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int flags; int name; } ;


 scalar_t__ EL3_CMD ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 unsigned short RxBroadcast ;
 unsigned short RxMulticast ;
 unsigned short RxProm ;
 unsigned short RxStation ;
 unsigned short SetRxFilter ;
 int corkscrew_debug ;
 int netdev_mc_empty (struct net_device*) ;
 int outw (unsigned short,scalar_t__) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void set_rx_mode(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 unsigned short new_mode;

 if (dev->flags & IFF_PROMISC) {
  if (corkscrew_debug > 3)
   pr_debug("%s: Setting promiscuous mode.\n",
          dev->name);
  new_mode = SetRxFilter | RxStation | RxMulticast | RxBroadcast | RxProm;
 } else if (!netdev_mc_empty(dev) || dev->flags & IFF_ALLMULTI) {
  new_mode = SetRxFilter | RxStation | RxMulticast | RxBroadcast;
 } else
  new_mode = SetRxFilter | RxStation | RxBroadcast;

 outw(new_mode, ioaddr + EL3_CMD);
}
