
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hinic_dev {TYPE_1__* netdev; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int features; } ;


 struct hinic_dev* netdev_priv (struct net_device*) ;
 int set_features (struct hinic_dev*,int ,int ,int) ;

__attribute__((used)) static int hinic_set_features(struct net_device *netdev,
         netdev_features_t features)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);

 return set_features(nic_dev, nic_dev->netdev->features,
       features, 0);
}
