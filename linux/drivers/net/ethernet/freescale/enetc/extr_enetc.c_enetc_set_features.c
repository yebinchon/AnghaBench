
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXHASH ;
 int enetc_set_rss (struct net_device*,int) ;

int enetc_set_features(struct net_device *ndev,
         netdev_features_t features)
{
 netdev_features_t changed = ndev->features ^ features;

 if (changed & NETIF_F_RXHASH)
  enetc_set_rss(ndev, !!(features & NETIF_F_RXHASH));

 return 0;
}
