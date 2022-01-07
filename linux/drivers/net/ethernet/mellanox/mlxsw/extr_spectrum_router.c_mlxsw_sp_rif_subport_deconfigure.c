
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_rif {TYPE_1__* dev; int mlxsw_sp; struct mlxsw_sp_fid* fid; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int mlxsw_sp_fid_index (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_fid_rif_set (struct mlxsw_sp_fid*,int *) ;
 int mlxsw_sp_rif_fdb_op (int ,int ,int ,int) ;
 int mlxsw_sp_rif_macvlan_flush (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_rif_subport_op (struct mlxsw_sp_rif*,int) ;

__attribute__((used)) static void mlxsw_sp_rif_subport_deconfigure(struct mlxsw_sp_rif *rif)
{
 struct mlxsw_sp_fid *fid = rif->fid;

 mlxsw_sp_fid_rif_set(fid, ((void*)0));
 mlxsw_sp_rif_fdb_op(rif->mlxsw_sp, rif->dev->dev_addr,
       mlxsw_sp_fid_index(fid), 0);
 mlxsw_sp_rif_macvlan_flush(rif);
 mlxsw_sp_rif_subport_op(rif, 0);
}
