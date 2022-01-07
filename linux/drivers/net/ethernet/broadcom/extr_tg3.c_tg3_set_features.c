
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_LOOPBACK ;
 scalar_t__ netif_running (struct net_device*) ;
 int tg3_set_loopback (struct net_device*,int) ;

__attribute__((used)) static int tg3_set_features(struct net_device *dev, netdev_features_t features)
{
 netdev_features_t changed = dev->features ^ features;

 if ((changed & NETIF_F_LOOPBACK) && netif_running(dev))
  tg3_set_loopback(dev, features);

 return 0;
}
