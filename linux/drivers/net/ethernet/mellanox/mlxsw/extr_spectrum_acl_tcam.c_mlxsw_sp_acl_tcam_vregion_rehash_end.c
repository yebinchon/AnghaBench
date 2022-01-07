
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vregion {struct mlxsw_sp_acl_tcam_region* region2; } ;
struct mlxsw_sp_acl_tcam_rehash_ctx {int * hints_priv; } ;
struct mlxsw_sp_acl_tcam_region {int dummy; } ;
struct mlxsw_sp_acl_tcam_ops {int (* region_rehash_hints_put ) (int *) ;} ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;


 int mlxsw_sp_acl_tcam_group_region_detach (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ;
 int mlxsw_sp_acl_tcam_region_destroy (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vregion_rehash_end(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_tcam_vregion *vregion,
         struct mlxsw_sp_acl_tcam_rehash_ctx *ctx)
{
 struct mlxsw_sp_acl_tcam_region *unused_region = vregion->region2;
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

 vregion->region2 = ((void*)0);
 mlxsw_sp_acl_tcam_group_region_detach(mlxsw_sp, unused_region);
 mlxsw_sp_acl_tcam_region_destroy(mlxsw_sp, unused_region);
 ops->region_rehash_hints_put(ctx->hints_priv);
 ctx->hints_priv = ((void*)0);
}
