
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_hints {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int objagg_lock; struct mlxsw_sp_acl_atcam_region* aregion; int atcam_erps_list; int * ops; int erp_core; int objagg; } ;
struct mlxsw_sp_acl_atcam_region {TYPE_1__* atcam; } ;
struct TYPE_2__ {int erp_core; } ;


 int ENOMEM ;
 struct mlxsw_sp_acl_erp_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int erp_no_mask_ops ;
 int kfree (struct mlxsw_sp_acl_erp_table*) ;
 struct mlxsw_sp_acl_erp_table* kzalloc (int,int ) ;
 int mlxsw_sp_acl_erp_objagg_ops ;
 int mutex_init (int *) ;
 int objagg_create (int *,struct objagg_hints*,struct mlxsw_sp_acl_atcam_region*) ;

__attribute__((used)) static struct mlxsw_sp_acl_erp_table *
mlxsw_sp_acl_erp_table_create(struct mlxsw_sp_acl_atcam_region *aregion,
         struct objagg_hints *hints)
{
 struct mlxsw_sp_acl_erp_table *erp_table;
 int err;

 erp_table = kzalloc(sizeof(*erp_table), GFP_KERNEL);
 if (!erp_table)
  return ERR_PTR(-ENOMEM);

 erp_table->objagg = objagg_create(&mlxsw_sp_acl_erp_objagg_ops,
       hints, aregion);
 if (IS_ERR(erp_table->objagg)) {
  err = PTR_ERR(erp_table->objagg);
  goto err_objagg_create;
 }

 erp_table->erp_core = aregion->atcam->erp_core;
 erp_table->ops = &erp_no_mask_ops;
 INIT_LIST_HEAD(&erp_table->atcam_erps_list);
 erp_table->aregion = aregion;
 mutex_init(&erp_table->objagg_lock);

 return erp_table;

err_objagg_create:
 kfree(erp_table);
 return ERR_PTR(err);
}
