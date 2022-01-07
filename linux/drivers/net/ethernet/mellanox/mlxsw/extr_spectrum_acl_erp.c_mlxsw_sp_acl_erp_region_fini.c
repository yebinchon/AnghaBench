
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region {int erp_table; } ;


 int mlxsw_sp_acl_erp_table_destroy (int ) ;

void mlxsw_sp_acl_erp_region_fini(struct mlxsw_sp_acl_atcam_region *aregion)
{
 mlxsw_sp_acl_erp_table_destroy(aregion->erp_table);
}
