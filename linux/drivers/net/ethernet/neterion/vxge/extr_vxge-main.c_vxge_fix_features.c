
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXHASH ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static netdev_features_t vxge_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 netdev_features_t changed = dev->features ^ features;





 if ((changed & NETIF_F_RXHASH) && netif_running(dev))
  features ^= NETIF_F_RXHASH;

 return features;
}
