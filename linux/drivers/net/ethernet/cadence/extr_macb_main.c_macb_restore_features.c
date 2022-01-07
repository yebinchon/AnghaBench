
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct macb {struct net_device* dev; } ;
typedef int netdev_features_t ;


 int macb_set_rxcsum_feature (struct macb*,int ) ;
 int macb_set_rxflow_feature (struct macb*,int ) ;
 int macb_set_txcsum_feature (struct macb*,int ) ;

__attribute__((used)) static void macb_restore_features(struct macb *bp)
{
 struct net_device *netdev = bp->dev;
 netdev_features_t features = netdev->features;


 macb_set_txcsum_feature(bp, features);


 macb_set_rxcsum_feature(bp, features);


 macb_set_rxflow_feature(bp, features);
}
