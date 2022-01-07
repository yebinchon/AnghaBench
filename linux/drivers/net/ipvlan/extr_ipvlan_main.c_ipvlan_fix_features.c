
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipvl_dev {int sfeatures; } ;
typedef int netdev_features_t ;


 int IPVLAN_FEATURES ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t ipvlan_fix_features(struct net_device *dev,
          netdev_features_t features)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);

 return features & (ipvlan->sfeatures | ~IPVLAN_FEATURES);
}
