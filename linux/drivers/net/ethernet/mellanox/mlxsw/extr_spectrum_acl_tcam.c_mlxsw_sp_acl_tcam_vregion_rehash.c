
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_rehash_ctx {int dummy; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam_rehash_ctx ctx; } ;
struct mlxsw_sp_acl_tcam_vregion {TYPE_1__ rehash; } ;
struct mlxsw_sp {TYPE_2__* bus_info; } ;
struct TYPE_4__ {int dev; } ;


 int EAGAIN ;
 int dev_err (int ,char*) ;
 int mlxsw_sp_acl_tcam_vregion_migrate (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*,int*) ;
 int mlxsw_sp_acl_tcam_vregion_rehash_end (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*) ;
 int mlxsw_sp_acl_tcam_vregion_rehash_in_progress (struct mlxsw_sp_acl_tcam_rehash_ctx*) ;
 int mlxsw_sp_acl_tcam_vregion_rehash_start (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vregion_rehash(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_vregion *vregion,
     int *credits)
{
 struct mlxsw_sp_acl_tcam_rehash_ctx *ctx = &vregion->rehash.ctx;
 int err;





 if (!mlxsw_sp_acl_tcam_vregion_rehash_in_progress(ctx)) {
  err = mlxsw_sp_acl_tcam_vregion_rehash_start(mlxsw_sp,
            vregion, ctx);
  if (err) {
   if (err != -EAGAIN)
    dev_err(mlxsw_sp->bus_info->dev, "Failed get rehash hints\n");
   return;
  }
 }

 err = mlxsw_sp_acl_tcam_vregion_migrate(mlxsw_sp, vregion,
      ctx, credits);
 if (err) {
  dev_err(mlxsw_sp->bus_info->dev, "Failed to migrate vregion\n");
 }

 if (*credits >= 0)
  mlxsw_sp_acl_tcam_vregion_rehash_end(mlxsw_sp, vregion, ctx);
}
