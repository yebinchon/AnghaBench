
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_vregion {int lock; int region2; int region; } ;
struct mlxsw_sp_acl_tcam_rehash_ctx {int this_is_rollback; int * current_vchunk; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*) ;
 int mlxsw_sp_acl_tcam_vchunk_migrate_all (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swap (int ,int ) ;
 int trace_mlxsw_sp_acl_tcam_vregion_migrate (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;
 int trace_mlxsw_sp_acl_tcam_vregion_migrate_end (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;
 int trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_vregion_migrate(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_tcam_vregion *vregion,
      struct mlxsw_sp_acl_tcam_rehash_ctx *ctx,
      int *credits)
{
 int err, err2;

 trace_mlxsw_sp_acl_tcam_vregion_migrate(mlxsw_sp, vregion);
 mutex_lock(&vregion->lock);
 err = mlxsw_sp_acl_tcam_vchunk_migrate_all(mlxsw_sp, vregion,
         ctx, credits);
 if (err) {




  swap(vregion->region, vregion->region2);
  ctx->current_vchunk = ((void*)0);
  ctx->this_is_rollback = 1;
  err2 = mlxsw_sp_acl_tcam_vchunk_migrate_all(mlxsw_sp, vregion,
           ctx, credits);
  if (err2) {
   trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(mlxsw_sp,
                vregion);
   dev_err(mlxsw_sp->bus_info->dev, "Failed to rollback during vregion migration fail\n");

  }
 }
 mutex_unlock(&vregion->lock);
 trace_mlxsw_sp_acl_tcam_vregion_migrate_end(mlxsw_sp, vregion);
 return err;
}
