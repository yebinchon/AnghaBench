
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_driver {int (* sb_pool_get ) (struct mlxsw_core*,unsigned int,int ,struct devlink_sb_pool_info*) ;} ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink_sb_pool_info {int dummy; } ;
struct devlink {int dummy; } ;


 int EOPNOTSUPP ;
 struct mlxsw_core* devlink_priv (struct devlink*) ;
 int stub1 (struct mlxsw_core*,unsigned int,int ,struct devlink_sb_pool_info*) ;

__attribute__((used)) static int
mlxsw_devlink_sb_pool_get(struct devlink *devlink,
     unsigned int sb_index, u16 pool_index,
     struct devlink_sb_pool_info *pool_info)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
 struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;

 if (!mlxsw_driver->sb_pool_get)
  return -EOPNOTSUPP;
 return mlxsw_driver->sb_pool_get(mlxsw_core, sb_index,
      pool_index, pool_info);
}
