
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sib {int core; } ;


 int ARRAY_SIZE (int *) ;
 int mlxsw_core_trap_register (int ,int *,struct mlxsw_sib*) ;
 int mlxsw_core_trap_unregister (int ,int *,struct mlxsw_sib*) ;
 int * mlxsw_sib_listener ;

__attribute__((used)) static int mlxsw_sib_taps_init(struct mlxsw_sib *mlxsw_sib)
{
 int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(mlxsw_sib_listener); i++) {
  err = mlxsw_core_trap_register(mlxsw_sib->core,
            &mlxsw_sib_listener[i],
            mlxsw_sib);
  if (err)
   goto err_rx_listener_register;
 }

 return 0;

err_rx_listener_register:
 for (i--; i >= 0; i--) {
  mlxsw_core_trap_unregister(mlxsw_sib->core,
        &mlxsw_sib_listener[i],
        mlxsw_sib);
 }

 return err;
}
