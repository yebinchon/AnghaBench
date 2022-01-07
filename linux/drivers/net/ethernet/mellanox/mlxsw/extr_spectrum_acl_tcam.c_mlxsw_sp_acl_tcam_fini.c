
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_ops {int (* fini ) (struct mlxsw_sp*,int ) ;} ;
struct mlxsw_sp_acl_tcam {int used_regions; int used_groups; int priv; int lock; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;


 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int stub1 (struct mlxsw_sp*,int ) ;

void mlxsw_sp_acl_tcam_fini(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_acl_tcam *tcam)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

 mutex_destroy(&tcam->lock);
 ops->fini(mlxsw_sp, tcam->priv);
 kfree(tcam->used_groups);
 kfree(tcam->used_regions);
}
