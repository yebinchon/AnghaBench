
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_driver {int (* sb_port_pool_set ) (struct mlxsw_core_port*,unsigned int,int ,int ,struct netlink_ext_ack*) ;} ;
struct mlxsw_core_port {int dummy; } ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink_port {int devlink; } ;


 int EOPNOTSUPP ;
 struct mlxsw_core_port* __dl_port (struct devlink_port*) ;
 struct mlxsw_core* devlink_priv (int ) ;
 int mlxsw_core_port_check (struct mlxsw_core_port*) ;
 int stub1 (struct mlxsw_core_port*,unsigned int,int ,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int mlxsw_devlink_sb_port_pool_set(struct devlink_port *devlink_port,
       unsigned int sb_index, u16 pool_index,
       u32 threshold,
       struct netlink_ext_ack *extack)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink_port->devlink);
 struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;
 struct mlxsw_core_port *mlxsw_core_port = __dl_port(devlink_port);

 if (!mlxsw_driver->sb_port_pool_set ||
     !mlxsw_core_port_check(mlxsw_core_port))
  return -EOPNOTSUPP;
 return mlxsw_driver->sb_port_pool_set(mlxsw_core_port, sb_index,
           pool_index, threshold, extack);
}
