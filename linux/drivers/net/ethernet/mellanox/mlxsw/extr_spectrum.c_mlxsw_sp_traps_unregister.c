
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct mlxsw_listener {int dummy; } ;


 int mlxsw_core_trap_unregister (int ,struct mlxsw_listener const*,struct mlxsw_sp*) ;

__attribute__((used)) static void mlxsw_sp_traps_unregister(struct mlxsw_sp *mlxsw_sp,
          const struct mlxsw_listener listeners[],
          size_t listeners_count)
{
 int i;

 for (i = 0; i < listeners_count; i++) {
  mlxsw_core_trap_unregister(mlxsw_sp->core,
        &listeners[i],
        mlxsw_sp);
 }
}
