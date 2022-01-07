
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_LRO ;
 int mtk_hwlro_netdev_disable (struct net_device*) ;

__attribute__((used)) static int mtk_set_features(struct net_device *dev, netdev_features_t features)
{
 int err = 0;

 if (!((dev->features ^ features) & NETIF_F_LRO))
  return 0;

 if (!(features & NETIF_F_LRO))
  mtk_hwlro_netdev_disable(dev);

 return err;
}
