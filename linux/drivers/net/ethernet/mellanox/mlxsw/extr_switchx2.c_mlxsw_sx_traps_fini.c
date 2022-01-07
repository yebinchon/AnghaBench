
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx {int core; } ;


 int ARRAY_SIZE (int *) ;
 int mlxsw_core_trap_unregister (int ,int *,struct mlxsw_sx*) ;
 int * mlxsw_sx_listener ;

__attribute__((used)) static void mlxsw_sx_traps_fini(struct mlxsw_sx *mlxsw_sx)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mlxsw_sx_listener); i++) {
  mlxsw_core_trap_unregister(mlxsw_sx->core,
        &mlxsw_sx_listener[i],
        mlxsw_sx);
 }
}
