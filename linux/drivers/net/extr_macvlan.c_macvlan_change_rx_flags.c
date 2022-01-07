
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct macvlan_dev {struct net_device* lowerdev; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macvlan_change_rx_flags(struct net_device *dev, int change)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;

 if (dev->flags & IFF_UP) {
  if (change & IFF_ALLMULTI)
   dev_set_allmulti(lowerdev, dev->flags & IFF_ALLMULTI ? 1 : -1);
  if (change & IFF_PROMISC)
   dev_set_promiscuity(lowerdev,
         dev->flags & IFF_PROMISC ? 1 : -1);

 }
}
