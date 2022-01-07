
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int devlink_traps_register (struct devlink*,int ,scalar_t__,struct mlxsw_sp*) ;
 int mlxsw_sp_listener_devlink_map ;
 int mlxsw_sp_listeners_arr ;
 int mlxsw_sp_traps_arr ;
 struct devlink* priv_to_devlink (int ) ;

int mlxsw_sp_devlink_traps_init(struct mlxsw_sp *mlxsw_sp)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);

 if (WARN_ON(ARRAY_SIZE(mlxsw_sp_listener_devlink_map) !=
      ARRAY_SIZE(mlxsw_sp_listeners_arr)))
  return -EINVAL;

 return devlink_traps_register(devlink, mlxsw_sp_traps_arr,
          ARRAY_SIZE(mlxsw_sp_traps_arr),
          mlxsw_sp);
}
