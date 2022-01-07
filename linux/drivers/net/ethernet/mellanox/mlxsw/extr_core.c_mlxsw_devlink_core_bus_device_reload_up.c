
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlxsw_core {int bus_priv; int bus; int bus_info; } ;
struct devlink {int dummy; } ;


 struct mlxsw_core* devlink_priv (struct devlink*) ;
 int mlxsw_core_bus_device_register (int ,int ,int ,int,struct devlink*) ;

__attribute__((used)) static int
mlxsw_devlink_core_bus_device_reload_up(struct devlink *devlink,
     struct netlink_ext_ack *extack)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);

 return mlxsw_core_bus_device_register(mlxsw_core->bus_info,
           mlxsw_core->bus,
           mlxsw_core->bus_priv, 1,
           devlink);
}
