
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port_vlan {int list; int vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {int dummy; } ;


 int kfree (struct mlxsw_sp_port_vlan*) ;
 int list_del (int *) ;
 int mlxsw_sp_port_vlan_cleanup (struct mlxsw_sp_port_vlan*) ;
 int mlxsw_sp_port_vlan_set (struct mlxsw_sp_port*,int ,int ,int,int) ;

void mlxsw_sp_port_vlan_destroy(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan)
{
 struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
 u16 vid = mlxsw_sp_port_vlan->vid;

 mlxsw_sp_port_vlan_cleanup(mlxsw_sp_port_vlan);
 list_del(&mlxsw_sp_port_vlan->list);
 kfree(mlxsw_sp_port_vlan);
 mlxsw_sp_port_vlan_set(mlxsw_sp_port, vid, vid, 0, 0);
}
