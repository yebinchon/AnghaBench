
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_region {int id; TYPE_1__* group; int priv; } ;
struct mlxsw_sp_acl_tcam_ops {int (* region_fini ) (struct mlxsw_sp*,int ) ;} ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct TYPE_2__ {int tcam; } ;


 int kfree (struct mlxsw_sp_acl_tcam_region*) ;
 int mlxsw_sp_acl_tcam_region_disable (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ;
 int mlxsw_sp_acl_tcam_region_free (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ;
 int mlxsw_sp_acl_tcam_region_id_put (int ,int ) ;
 int stub1 (struct mlxsw_sp*,int ) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_region_destroy(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_region *region)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

 ops->region_fini(mlxsw_sp, region->priv);
 mlxsw_sp_acl_tcam_region_disable(mlxsw_sp, region);
 mlxsw_sp_acl_tcam_region_free(mlxsw_sp, region);
 mlxsw_sp_acl_tcam_region_id_put(region->group->tcam,
     region->id);
 kfree(region);
}
