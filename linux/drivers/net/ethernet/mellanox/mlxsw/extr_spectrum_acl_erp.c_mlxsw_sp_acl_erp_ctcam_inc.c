
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int num_ctcam_erps; } ;


 int __mlxsw_sp_acl_erp_table_other_inc (struct mlxsw_sp_acl_erp_table*,int *) ;

__attribute__((used)) static int mlxsw_sp_acl_erp_ctcam_inc(struct mlxsw_sp_acl_erp_table *erp_table)
{
 return __mlxsw_sp_acl_erp_table_other_inc(erp_table,
        &erp_table->num_ctcam_erps);
}
