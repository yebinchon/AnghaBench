
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_m {int dummy; } ;
struct mlxsw_core {int dummy; } ;


 struct mlxsw_m* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_m_ports_remove (struct mlxsw_m*) ;

__attribute__((used)) static void mlxsw_m_fini(struct mlxsw_core *mlxsw_core)
{
 struct mlxsw_m *mlxsw_m = mlxsw_core_driver_priv(mlxsw_core);

 mlxsw_m_ports_remove(mlxsw_m);
}
