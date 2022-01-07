
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {unsigned int flags; int name; } ;


 unsigned int IFF_UP ;
 int dev_change_flags (struct net_device*,unsigned int,struct netlink_ext_ack*) ;
 int netdev_err (struct net_device*,char*,int ) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static void cycle_netdev(struct net_device *dev,
    struct netlink_ext_ack *extack)
{
 unsigned int flags = dev->flags;
 int ret;

 if (!netif_running(dev))
  return;

 ret = dev_change_flags(dev, flags & ~IFF_UP, extack);
 if (ret >= 0)
  ret = dev_change_flags(dev, flags, extack);

 if (ret < 0) {
  netdev_err(dev,
      "Failed to cycle device %s; route tables might be wrong!\n",
      dev->name);
 }
}
