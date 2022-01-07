
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EBUSY ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_update_features (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int tse_change_mtu(struct net_device *dev, int new_mtu)
{
 if (netif_running(dev)) {
  netdev_err(dev, "must be stopped to change its MTU\n");
  return -EBUSY;
 }

 dev->mtu = new_mtu;
 netdev_update_features(dev);

 return 0;
}
