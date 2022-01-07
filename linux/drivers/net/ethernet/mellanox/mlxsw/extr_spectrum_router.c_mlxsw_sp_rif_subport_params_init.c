
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif_params {int system_port; int lag_id; int lag; int vid; } ;
struct mlxsw_sp_port_vlan {int vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {int local_port; int lag_id; int lagged; } ;



__attribute__((used)) static void
mlxsw_sp_rif_subport_params_init(struct mlxsw_sp_rif_params *params,
     struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan)
{
 struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;

 params->vid = mlxsw_sp_port_vlan->vid;
 params->lag = mlxsw_sp_port->lagged;
 if (params->lag)
  params->lag_id = mlxsw_sp_port->lag_id;
 else
  params->system_port = mlxsw_sp_port->local_port;
}
