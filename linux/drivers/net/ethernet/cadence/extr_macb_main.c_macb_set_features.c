
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct macb {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_CSUM ;
 int NETIF_F_NTUPLE ;
 int NETIF_F_RXCSUM ;
 int macb_set_rxcsum_feature (struct macb*,int) ;
 int macb_set_rxflow_feature (struct macb*,int) ;
 int macb_set_txcsum_feature (struct macb*,int) ;
 struct macb* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macb_set_features(struct net_device *netdev,
        netdev_features_t features)
{
 struct macb *bp = netdev_priv(netdev);
 netdev_features_t changed = features ^ netdev->features;


 if (changed & NETIF_F_HW_CSUM)
  macb_set_txcsum_feature(bp, features);


 if (changed & NETIF_F_RXCSUM)
  macb_set_rxcsum_feature(bp, features);


 if (changed & NETIF_F_NTUPLE)
  macb_set_rxflow_feature(bp, features);

 return 0;
}
