
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mtk_mac {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_LRO ;
 int mtk_hwlro_get_ip_cnt (struct mtk_mac*) ;
 int netdev_info (struct net_device*,char*) ;
 struct mtk_mac* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t mtk_fix_features(struct net_device *dev,
       netdev_features_t features)
{
 if (!(features & NETIF_F_LRO)) {
  struct mtk_mac *mac = netdev_priv(dev);
  int ip_cnt = mtk_hwlro_get_ip_cnt(mac);

  if (ip_cnt) {
   netdev_info(dev, "RX flow is programmed, LRO should keep on\n");

   features |= NETIF_F_LRO;
  }
 }

 return features;
}
