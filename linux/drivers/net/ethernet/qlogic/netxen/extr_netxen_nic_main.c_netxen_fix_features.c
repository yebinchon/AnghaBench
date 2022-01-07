
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int netdev_info (struct net_device*,char*) ;

__attribute__((used)) static netdev_features_t netxen_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 if (!(features & NETIF_F_RXCSUM)) {
  netdev_info(dev, "disabling LRO as RXCSUM is off\n");

  features &= ~NETIF_F_LRO;
 }

 return features;
}
