
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int dummy; } ;
struct mlxsw_sp_acl_erp_delta {int key; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;


 int kfree (struct mlxsw_sp_acl_erp_delta*) ;
 int mlxsw_sp_acl_erp_delta_dec (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_master_mask_clear (struct mlxsw_sp_acl_erp_table*,int *) ;

__attribute__((used)) static void mlxsw_sp_acl_erp_delta_destroy(void *priv, void *delta_priv)
{
 struct mlxsw_sp_acl_erp_delta *delta = delta_priv;
 struct mlxsw_sp_acl_atcam_region *aregion = priv;
 struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;

 mlxsw_sp_acl_erp_master_mask_clear(erp_table, &delta->key);
 mlxsw_sp_acl_erp_delta_dec(erp_table);
 kfree(delta);
}
