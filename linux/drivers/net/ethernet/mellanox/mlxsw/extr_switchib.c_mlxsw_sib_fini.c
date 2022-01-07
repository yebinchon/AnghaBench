
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sib {int dummy; } ;
struct mlxsw_core {int dummy; } ;


 struct mlxsw_sib* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sib_ports_remove (struct mlxsw_sib*) ;
 int mlxsw_sib_traps_fini (struct mlxsw_sib*) ;

__attribute__((used)) static void mlxsw_sib_fini(struct mlxsw_core *mlxsw_core)
{
 struct mlxsw_sib *mlxsw_sib = mlxsw_core_driver_priv(mlxsw_core);

 mlxsw_sib_traps_fini(mlxsw_sib);
 mlxsw_sib_ports_remove(mlxsw_sib);
}
