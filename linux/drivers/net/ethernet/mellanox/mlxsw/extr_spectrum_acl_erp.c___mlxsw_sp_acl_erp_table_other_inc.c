
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int * ops; } ;


 int erp_multiple_masks_ops ;
 int mlxsw_sp_acl_erp_region_table_trans (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_table_is_used (struct mlxsw_sp_acl_erp_table*) ;

__attribute__((used)) static int
__mlxsw_sp_acl_erp_table_other_inc(struct mlxsw_sp_acl_erp_table *erp_table,
       unsigned int *inc_num)
{
 int err;




 if (!mlxsw_sp_acl_erp_table_is_used(erp_table)) {
  err = mlxsw_sp_acl_erp_region_table_trans(erp_table);
  if (err)
   return err;
 }


 if (erp_table->ops != &erp_multiple_masks_ops)
  erp_table->ops = &erp_multiple_masks_ops;

 (*inc_num)++;

 return 0;
}
