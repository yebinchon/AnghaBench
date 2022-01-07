
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int * ops; } ;


 int erp_no_mask_ops ;
 int erp_single_mask_ops ;

__attribute__((used)) static bool
mlxsw_sp_acl_erp_table_is_used(const struct mlxsw_sp_acl_erp_table *erp_table)
{
 return erp_table->ops != &erp_single_mask_ops &&
        erp_table->ops != &erp_no_mask_ops;
}
