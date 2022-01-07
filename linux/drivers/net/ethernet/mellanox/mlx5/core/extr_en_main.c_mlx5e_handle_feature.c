
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;
typedef int (* mlx5e_feature_handler ) (struct net_device*,int) ;


 int MLX5E_SET_FEATURE (int*,int,int) ;
 int netdev_err (struct net_device*,char*,char*,int*,int) ;

__attribute__((used)) static int mlx5e_handle_feature(struct net_device *netdev,
    netdev_features_t *features,
    netdev_features_t wanted_features,
    netdev_features_t feature,
    mlx5e_feature_handler feature_handler)
{
 netdev_features_t changes = wanted_features ^ netdev->features;
 bool enable = !!(wanted_features & feature);
 int err;

 if (!(changes & feature))
  return 0;

 err = feature_handler(netdev, enable);
 if (err) {
  netdev_err(netdev, "%s feature %pNF failed, err %d\n",
      enable ? "Enable" : "Disable", &feature, err);
  return err;
 }

 MLX5E_SET_FEATURE(features, feature, enable);
 return 0;
}
