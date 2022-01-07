
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_sp_port_vlan {struct mlxsw_sp_fid* fid; int vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {int local_port; } ;
struct mlxsw_sp_fid {int dummy; } ;


 int MLXSW_SP_FLOOD_TYPE_BC ;
 int MLXSW_SP_FLOOD_TYPE_MC ;
 int MLXSW_SP_FLOOD_TYPE_UC ;
 int mlxsw_sp_fid_flood_set (struct mlxsw_sp_fid*,int ,int ,int) ;
 int mlxsw_sp_fid_port_vid_unmap (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;

__attribute__((used)) static void
mlxsw_sp_port_vlan_fid_leave(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan)
{
 struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
 struct mlxsw_sp_fid *fid = mlxsw_sp_port_vlan->fid;
 u8 local_port = mlxsw_sp_port->local_port;
 u16 vid = mlxsw_sp_port_vlan->vid;

 mlxsw_sp_port_vlan->fid = ((void*)0);
 mlxsw_sp_fid_port_vid_unmap(fid, mlxsw_sp_port, vid);
 mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_BC, local_port, 0);
 mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_MC, local_port, 0);
 mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_UC, local_port, 0);
 mlxsw_sp_fid_put(fid);
}
