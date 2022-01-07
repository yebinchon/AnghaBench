
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx {int dummy; } ;
struct mlxsw_core {int dummy; } ;


 struct mlxsw_sx* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sx_ports_remove (struct mlxsw_sx*) ;
 int mlxsw_sx_traps_fini (struct mlxsw_sx*) ;

__attribute__((used)) static void mlxsw_sx_fini(struct mlxsw_core *mlxsw_core)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_core_driver_priv(mlxsw_core);

 mlxsw_sx_traps_fini(mlxsw_sx);
 mlxsw_sx_ports_remove(mlxsw_sx);
}
