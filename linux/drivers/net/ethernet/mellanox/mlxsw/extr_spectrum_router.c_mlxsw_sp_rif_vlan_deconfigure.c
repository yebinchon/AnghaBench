
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_rif {struct mlxsw_sp_fid* fid; TYPE_1__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int MLXSW_REG_RITR_VLAN_IF ;
 int MLXSW_SP_FLOOD_TYPE_BC ;
 int MLXSW_SP_FLOOD_TYPE_MC ;
 int mlxsw_sp_fid_8021q_vid (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_fid_flood_set (struct mlxsw_sp_fid*,int ,int ,int) ;
 int mlxsw_sp_fid_index (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_fid_rif_set (struct mlxsw_sp_fid*,int *) ;
 int mlxsw_sp_rif_fdb_op (struct mlxsw_sp*,int ,int ,int) ;
 int mlxsw_sp_rif_macvlan_flush (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_rif_vlan_fid_op (struct mlxsw_sp_rif*,int ,int ,int) ;
 int mlxsw_sp_router_port (struct mlxsw_sp*) ;

__attribute__((used)) static void mlxsw_sp_rif_vlan_deconfigure(struct mlxsw_sp_rif *rif)
{
 u16 vid = mlxsw_sp_fid_8021q_vid(rif->fid);
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 struct mlxsw_sp_fid *fid = rif->fid;

 mlxsw_sp_fid_rif_set(fid, ((void*)0));
 mlxsw_sp_rif_fdb_op(rif->mlxsw_sp, rif->dev->dev_addr,
       mlxsw_sp_fid_index(fid), 0);
 mlxsw_sp_rif_macvlan_flush(rif);
 mlxsw_sp_fid_flood_set(rif->fid, MLXSW_SP_FLOOD_TYPE_BC,
          mlxsw_sp_router_port(mlxsw_sp), 0);
 mlxsw_sp_fid_flood_set(rif->fid, MLXSW_SP_FLOOD_TYPE_MC,
          mlxsw_sp_router_port(mlxsw_sp), 0);
 mlxsw_sp_rif_vlan_fid_op(rif, MLXSW_REG_RITR_VLAN_IF, vid, 0);
}
