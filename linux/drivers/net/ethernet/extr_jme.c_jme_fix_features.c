
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
typedef int netdev_features_t ;


 int NETIF_F_ALL_TSO ;
 int NETIF_F_CSUM_MASK ;

__attribute__((used)) static netdev_features_t
jme_fix_features(struct net_device *netdev, netdev_features_t features)
{
 if (netdev->mtu > 1900)
  features &= ~(NETIF_F_ALL_TSO | NETIF_F_CSUM_MASK);
 return features;
}
