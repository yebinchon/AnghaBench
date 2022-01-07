
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int listeners_count; int listeners; int core; } ;


 int ARRAY_SIZE (int ) ;
 int mlxsw_sp_cpu_policers_set (int ) ;
 int mlxsw_sp_listener ;
 int mlxsw_sp_trap_groups_set (int ) ;
 int mlxsw_sp_traps_register (struct mlxsw_sp*,int ,int ) ;
 int mlxsw_sp_traps_unregister (struct mlxsw_sp*,int ,int ) ;

__attribute__((used)) static int mlxsw_sp_traps_init(struct mlxsw_sp *mlxsw_sp)
{
 int err;

 err = mlxsw_sp_cpu_policers_set(mlxsw_sp->core);
 if (err)
  return err;

 err = mlxsw_sp_trap_groups_set(mlxsw_sp->core);
 if (err)
  return err;

 err = mlxsw_sp_traps_register(mlxsw_sp, mlxsw_sp_listener,
          ARRAY_SIZE(mlxsw_sp_listener));
 if (err)
  return err;

 err = mlxsw_sp_traps_register(mlxsw_sp, mlxsw_sp->listeners,
          mlxsw_sp->listeners_count);
 if (err)
  goto err_extra_traps_init;

 return 0;

err_extra_traps_init:
 mlxsw_sp_traps_unregister(mlxsw_sp, mlxsw_sp_listener,
      ARRAY_SIZE(mlxsw_sp_listener));
 return err;
}
