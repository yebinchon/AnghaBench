
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int enetc_set_features (struct net_device*,int ) ;

__attribute__((used)) static int enetc_vf_set_features(struct net_device *ndev,
     netdev_features_t features)
{
 return enetc_set_features(ndev, features);
}
