
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdevsim {int dummy; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_TC ;
 struct netdevsim* netdev_priv (struct net_device*) ;
 int nsim_bpf_disable_tc (struct netdevsim*) ;

__attribute__((used)) static int
nsim_set_features(struct net_device *dev, netdev_features_t features)
{
 struct netdevsim *ns = netdev_priv(dev);

 if ((dev->features & NETIF_F_HW_TC) > (features & NETIF_F_HW_TC))
  return nsim_bpf_disable_tc(ns);

 return 0;
}
