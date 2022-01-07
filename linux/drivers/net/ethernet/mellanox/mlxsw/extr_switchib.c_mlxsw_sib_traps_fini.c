
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sib {int core; } ;


 int ARRAY_SIZE (int *) ;
 int mlxsw_core_trap_unregister (int ,int *,struct mlxsw_sib*) ;
 int * mlxsw_sib_listener ;

__attribute__((used)) static void mlxsw_sib_traps_fini(struct mlxsw_sib *mlxsw_sib)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mlxsw_sib_listener); i++) {
  mlxsw_core_trap_unregister(mlxsw_sib->core,
        &mlxsw_sib_listener[i], mlxsw_sib);
 }
}
