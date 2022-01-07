
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;


 int mlxsw_sp_port_ets_fini (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_maxrate_fini (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_pfc_fini (struct mlxsw_sp_port*) ;

void mlxsw_sp_port_dcb_fini(struct mlxsw_sp_port *mlxsw_sp_port)
{
 mlxsw_sp_port_pfc_fini(mlxsw_sp_port);
 mlxsw_sp_port_maxrate_fini(mlxsw_sp_port);
 mlxsw_sp_port_ets_fini(mlxsw_sp_port);
}
