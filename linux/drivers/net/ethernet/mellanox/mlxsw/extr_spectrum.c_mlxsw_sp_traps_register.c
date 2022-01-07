
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct mlxsw_listener {int dummy; } ;


 int mlxsw_core_trap_register (int ,struct mlxsw_listener const*,struct mlxsw_sp*) ;
 int mlxsw_core_trap_unregister (int ,struct mlxsw_listener const*,struct mlxsw_sp*) ;

__attribute__((used)) static int mlxsw_sp_traps_register(struct mlxsw_sp *mlxsw_sp,
       const struct mlxsw_listener listeners[],
       size_t listeners_count)
{
 int i;
 int err;

 for (i = 0; i < listeners_count; i++) {
  err = mlxsw_core_trap_register(mlxsw_sp->core,
            &listeners[i],
            mlxsw_sp);
  if (err)
   goto err_listener_register;

 }
 return 0;

err_listener_register:
 for (i--; i >= 0; i--) {
  mlxsw_core_trap_unregister(mlxsw_sp->core,
        &listeners[i],
        mlxsw_sp);
 }
 return err;
}
