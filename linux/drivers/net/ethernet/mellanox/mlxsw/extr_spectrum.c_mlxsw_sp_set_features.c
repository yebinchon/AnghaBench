
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int EINVAL ;
 int NETIF_F_HW_TC ;
 int NETIF_F_LOOPBACK ;
 int mlxsw_sp_feature_hw_tc ;
 int mlxsw_sp_feature_loopback ;
 int mlxsw_sp_handle_feature (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static int mlxsw_sp_set_features(struct net_device *dev,
     netdev_features_t features)
{
 netdev_features_t oper_features = dev->features;
 int err = 0;

 err |= mlxsw_sp_handle_feature(dev, features, NETIF_F_HW_TC,
           mlxsw_sp_feature_hw_tc);
 err |= mlxsw_sp_handle_feature(dev, features, NETIF_F_LOOPBACK,
           mlxsw_sp_feature_loopback);

 if (err) {
  dev->features = oper_features;
  return -EINVAL;
 }

 return 0;
}
