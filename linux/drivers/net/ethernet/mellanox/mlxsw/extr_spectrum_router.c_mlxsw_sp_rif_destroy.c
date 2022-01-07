
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_vr {int rif_count; int * mr_table; } ;
struct mlxsw_sp_rif_ops {int (* deconfigure ) (struct mlxsw_sp_rif*) ;} ;
struct mlxsw_sp_rif {size_t vr_id; size_t rif_index; int dev; struct mlxsw_sp_fid* fid; struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_rif_ops* ops; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int ** rifs; struct mlxsw_sp_vr* vrs; } ;


 int MLXSW_SP_L3_PROTO_MAX ;
 int dev_put (int ) ;
 int kfree (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_mr_rif_del (int ,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_rif_counters_free (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_router_rif_gone_sync (struct mlxsw_sp*,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_vr_put (struct mlxsw_sp*,struct mlxsw_sp_vr*) ;
 int stub1 (struct mlxsw_sp_rif*) ;

__attribute__((used)) static void mlxsw_sp_rif_destroy(struct mlxsw_sp_rif *rif)
{
 const struct mlxsw_sp_rif_ops *ops = rif->ops;
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 struct mlxsw_sp_fid *fid = rif->fid;
 struct mlxsw_sp_vr *vr;
 int i;

 mlxsw_sp_router_rif_gone_sync(mlxsw_sp, rif);
 vr = &mlxsw_sp->router->vrs[rif->vr_id];

 mlxsw_sp_rif_counters_free(rif);
 for (i = 0; i < MLXSW_SP_L3_PROTO_MAX; i++)
  mlxsw_sp_mr_rif_del(vr->mr_table[i], rif);
 ops->deconfigure(rif);
 if (fid)

  mlxsw_sp_fid_put(fid);
 mlxsw_sp->router->rifs[rif->rif_index] = ((void*)0);
 dev_put(rif->dev);
 kfree(rif);
 vr->rif_count--;
 mlxsw_sp_vr_put(mlxsw_sp, vr);
}
