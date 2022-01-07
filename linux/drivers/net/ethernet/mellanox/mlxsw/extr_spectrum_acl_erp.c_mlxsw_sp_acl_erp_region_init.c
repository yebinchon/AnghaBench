
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_hints {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_acl_erp_table*) ;
 int PTR_ERR (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_master_mask_init (struct mlxsw_sp_acl_atcam_region*) ;
 int mlxsw_sp_acl_erp_region_param_init (struct mlxsw_sp_acl_atcam_region*) ;
 struct mlxsw_sp_acl_erp_table* mlxsw_sp_acl_erp_table_create (struct mlxsw_sp_acl_atcam_region*,struct objagg_hints*) ;
 int mlxsw_sp_acl_erp_table_destroy (struct mlxsw_sp_acl_erp_table*) ;

int mlxsw_sp_acl_erp_region_init(struct mlxsw_sp_acl_atcam_region *aregion,
     void *hints_priv)
{
 struct mlxsw_sp_acl_erp_table *erp_table;
 struct objagg_hints *hints = hints_priv;
 int err;

 erp_table = mlxsw_sp_acl_erp_table_create(aregion, hints);
 if (IS_ERR(erp_table))
  return PTR_ERR(erp_table);
 aregion->erp_table = erp_table;


 err = mlxsw_sp_acl_erp_master_mask_init(aregion);
 if (err)
  goto err_erp_master_mask_init;


 err = mlxsw_sp_acl_erp_region_param_init(aregion);
 if (err)
  goto err_erp_region_param_init;

 return 0;

err_erp_region_param_init:
err_erp_master_mask_init:
 mlxsw_sp_acl_erp_table_destroy(erp_table);
 return err;
}
