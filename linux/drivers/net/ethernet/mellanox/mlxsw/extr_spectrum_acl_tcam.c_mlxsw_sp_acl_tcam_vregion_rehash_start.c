
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_vregion {TYPE_1__* region2; TYPE_1__* region; int tcam; } ;
struct mlxsw_sp_acl_tcam_rehash_ctx {int this_is_rollback; void* hints_priv; } ;
typedef void mlxsw_sp_acl_tcam_region ;
struct mlxsw_sp_acl_tcam_ops {int (* region_rehash_hints_put ) (void*) ;void* (* region_rehash_hints_get ) (int ) ;} ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct TYPE_2__ {int group; int priv; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int mlxsw_sp_acl_tcam_group_region_attach (struct mlxsw_sp*,int ,void*,unsigned int,TYPE_1__*) ;
 void* mlxsw_sp_acl_tcam_region_create (struct mlxsw_sp*,int ,struct mlxsw_sp_acl_tcam_vregion*,void*) ;
 int mlxsw_sp_acl_tcam_region_destroy (struct mlxsw_sp*,void*) ;
 unsigned int mlxsw_sp_acl_tcam_vregion_prio (struct mlxsw_sp_acl_tcam_vregion*) ;
 void* stub1 (int ) ;
 int stub2 (void*) ;
 int trace_mlxsw_sp_acl_tcam_vregion_rehash (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_vregion_rehash_start(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_acl_tcam_vregion *vregion,
           struct mlxsw_sp_acl_tcam_rehash_ctx *ctx)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
 unsigned int priority = mlxsw_sp_acl_tcam_vregion_prio(vregion);
 struct mlxsw_sp_acl_tcam_region *new_region;
 void *hints_priv;
 int err;

 trace_mlxsw_sp_acl_tcam_vregion_rehash(mlxsw_sp, vregion);

 hints_priv = ops->region_rehash_hints_get(vregion->region->priv);
 if (IS_ERR(hints_priv))
  return PTR_ERR(hints_priv);

 new_region = mlxsw_sp_acl_tcam_region_create(mlxsw_sp, vregion->tcam,
           vregion, hints_priv);
 if (IS_ERR(new_region)) {
  err = PTR_ERR(new_region);
  goto err_region_create;
 }




 vregion->region2 = vregion->region;
 vregion->region = new_region;
 err = mlxsw_sp_acl_tcam_group_region_attach(mlxsw_sp,
          vregion->region2->group,
          new_region, priority,
          vregion->region2);
 if (err)
  goto err_group_region_attach;

 ctx->hints_priv = hints_priv;
 ctx->this_is_rollback = 0;

 return 0;

err_group_region_attach:
 vregion->region = vregion->region2;
 vregion->region2 = ((void*)0);
 mlxsw_sp_acl_tcam_region_destroy(mlxsw_sp, new_region);
err_region_create:
 ops->region_rehash_hints_put(hints_priv);
 return err;
}
