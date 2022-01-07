
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_rif {int fid; TYPE_1__* dev; int mlxsw_sp; } ;
struct TYPE_2__ {int dev_addr; } ;


 int mlxsw_sp_fid_index (int ) ;
 int mlxsw_sp_fid_rif_set (int ,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_rif_fdb_op (int ,int ,int ,int) ;
 int mlxsw_sp_rif_subport_op (struct mlxsw_sp_rif*,int) ;

__attribute__((used)) static int mlxsw_sp_rif_subport_configure(struct mlxsw_sp_rif *rif)
{
 int err;

 err = mlxsw_sp_rif_subport_op(rif, 1);
 if (err)
  return err;

 err = mlxsw_sp_rif_fdb_op(rif->mlxsw_sp, rif->dev->dev_addr,
      mlxsw_sp_fid_index(rif->fid), 1);
 if (err)
  goto err_rif_fdb_op;

 mlxsw_sp_fid_rif_set(rif->fid, rif);
 return 0;

err_rif_fdb_op:
 mlxsw_sp_rif_subport_op(rif, 0);
 return err;
}
