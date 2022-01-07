
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mtu; } ;
typedef int netdev_features_t ;


 scalar_t__ ETH_DATA_LEN ;
 int NETIF_F_SG ;
 int netdev_info (struct net_device*,char*) ;

__attribute__((used)) static int xennet_set_features(struct net_device *dev,
 netdev_features_t features)
{
 if (!(features & NETIF_F_SG) && dev->mtu > ETH_DATA_LEN) {
  netdev_info(dev, "Reducing MTU because no SG offload");
  dev->mtu = ETH_DATA_LEN;
 }

 return 0;
}
