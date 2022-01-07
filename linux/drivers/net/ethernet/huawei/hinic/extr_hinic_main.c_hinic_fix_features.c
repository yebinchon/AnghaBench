
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hinic_dev {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int drv ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int netif_info (struct hinic_dev*,int ,struct net_device*,char*) ;

__attribute__((used)) static netdev_features_t hinic_fix_features(struct net_device *netdev,
         netdev_features_t features)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);


 if (!(features & NETIF_F_RXCSUM)) {
  netif_info(nic_dev, drv, netdev, "disabling LRO as RXCSUM is off\n");
  features &= ~NETIF_F_LRO;
 }

 return features;
}
