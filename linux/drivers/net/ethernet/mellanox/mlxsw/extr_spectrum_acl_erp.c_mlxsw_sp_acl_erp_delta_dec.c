
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int num_deltas; } ;


 int __mlxsw_sp_acl_erp_table_other_dec (struct mlxsw_sp_acl_erp_table*,int *) ;

__attribute__((used)) static void mlxsw_sp_acl_erp_delta_dec(struct mlxsw_sp_acl_erp_table *erp_table)
{
 __mlxsw_sp_acl_erp_table_other_dec(erp_table,
        &erp_table->num_deltas);
}
