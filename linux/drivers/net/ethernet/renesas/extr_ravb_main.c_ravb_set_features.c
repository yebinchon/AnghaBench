
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXCSUM ;
 int ravb_set_rx_csum (struct net_device*,int) ;

__attribute__((used)) static int ravb_set_features(struct net_device *ndev,
        netdev_features_t features)
{
 netdev_features_t changed = ndev->features ^ features;

 if (changed & NETIF_F_RXCSUM)
  ravb_set_rx_csum(ndev, features & NETIF_F_RXCSUM);

 ndev->features = features;

 return 0;
}
