
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;
typedef int (* mlxsw_sp_feature_handler ) (struct net_device*,int) ;


 int netdev_err (struct net_device*,char*,char*,int*,int) ;

__attribute__((used)) static int mlxsw_sp_handle_feature(struct net_device *dev,
       netdev_features_t wanted_features,
       netdev_features_t feature,
       mlxsw_sp_feature_handler feature_handler)
{
 netdev_features_t changes = wanted_features ^ dev->features;
 bool enable = !!(wanted_features & feature);
 int err;

 if (!(changes & feature))
  return 0;

 err = feature_handler(dev, enable);
 if (err) {
  netdev_err(dev, "%s feature %pNF failed, err %d\n",
      enable ? "Enable" : "Disable", &feature, err);
  return err;
 }

 if (enable)
  dev->features |= feature;
 else
  dev->features &= ~feature;

 return 0;
}
