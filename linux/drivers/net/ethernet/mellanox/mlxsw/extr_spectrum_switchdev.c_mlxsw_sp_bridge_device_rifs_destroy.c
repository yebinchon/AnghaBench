
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_bridge_device_upper_rif_destroy ;
 int mlxsw_sp_rif_destroy_by_dev (struct mlxsw_sp*,struct net_device*) ;
 int netdev_walk_all_upper_dev_rcu (struct net_device*,int ,struct mlxsw_sp*) ;

__attribute__((used)) static void mlxsw_sp_bridge_device_rifs_destroy(struct mlxsw_sp *mlxsw_sp,
      struct net_device *dev)
{
 mlxsw_sp_rif_destroy_by_dev(mlxsw_sp, dev);
 netdev_walk_all_upper_dev_rcu(dev,
          mlxsw_sp_bridge_device_upper_rif_destroy,
          mlxsw_sp);
}
