
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int num_ctcam_erps; } ;


 int mlxsw_sp_acl_erp_table_enable (struct mlxsw_sp_acl_erp_table*,int) ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_region_ctcam_enable(struct mlxsw_sp_acl_erp_table *erp_table)
{

 if (erp_table->num_ctcam_erps > 1)
  return 0;

 return mlxsw_sp_acl_erp_table_enable(erp_table, 1);
}
