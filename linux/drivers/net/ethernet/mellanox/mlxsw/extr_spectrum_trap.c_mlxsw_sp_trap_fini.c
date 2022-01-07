
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_listener {int dummy; } ;
struct mlxsw_core {int dummy; } ;
struct devlink_trap {scalar_t__ id; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int mlxsw_core_trap_unregister (struct mlxsw_core*,struct mlxsw_listener*,void*) ;
 scalar_t__* mlxsw_sp_listener_devlink_map ;
 struct mlxsw_listener* mlxsw_sp_listeners_arr ;

void mlxsw_sp_trap_fini(struct mlxsw_core *mlxsw_core,
   const struct devlink_trap *trap, void *trap_ctx)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mlxsw_sp_listener_devlink_map); i++) {
  struct mlxsw_listener *listener;

  if (mlxsw_sp_listener_devlink_map[i] != trap->id)
   continue;
  listener = &mlxsw_sp_listeners_arr[i];

  mlxsw_core_trap_unregister(mlxsw_core, listener, trap_ctx);
 }
}
