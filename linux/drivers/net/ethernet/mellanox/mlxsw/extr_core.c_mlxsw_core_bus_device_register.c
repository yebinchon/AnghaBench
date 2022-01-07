
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_bus_info {int dummy; } ;
struct mlxsw_bus {int dummy; } ;
struct devlink {int dummy; } ;


 int EAGAIN ;
 int __mlxsw_core_bus_device_register (struct mlxsw_bus_info const*,struct mlxsw_bus const*,void*,int,struct devlink*) ;

int mlxsw_core_bus_device_register(const struct mlxsw_bus_info *mlxsw_bus_info,
       const struct mlxsw_bus *mlxsw_bus,
       void *bus_priv, bool reload,
       struct devlink *devlink)
{
 bool called_again = 0;
 int err;

again:
 err = __mlxsw_core_bus_device_register(mlxsw_bus_info, mlxsw_bus,
            bus_priv, reload, devlink);




 if (err == -EAGAIN && !called_again) {
  called_again = 1;
  goto again;
 }

 return err;
}
