
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int loopback_supported; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_LOOPBACK ;
 struct nicvf* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static netdev_features_t nicvf_fix_features(struct net_device *netdev,
         netdev_features_t features)
{
 struct nicvf *nic = netdev_priv(netdev);

 if ((features & NETIF_F_LOOPBACK) &&
     netif_running(netdev) && !nic->loopback_supported)
  features &= ~NETIF_F_LOOPBACK;

 return features;
}
