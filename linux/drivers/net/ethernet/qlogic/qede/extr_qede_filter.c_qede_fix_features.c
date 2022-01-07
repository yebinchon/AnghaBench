
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {TYPE_1__* ndev; scalar_t__ xdp_prog; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int NETIF_F_GRO ;
 int NETIF_F_GRO_HW ;
 scalar_t__ PAGE_SIZE ;
 struct qede_dev* netdev_priv (struct net_device*) ;

netdev_features_t qede_fix_features(struct net_device *dev,
        netdev_features_t features)
{
 struct qede_dev *edev = netdev_priv(dev);

 if (edev->xdp_prog || edev->ndev->mtu > PAGE_SIZE ||
     !(features & NETIF_F_GRO))
  features &= ~NETIF_F_GRO_HW;

 return features;
}
