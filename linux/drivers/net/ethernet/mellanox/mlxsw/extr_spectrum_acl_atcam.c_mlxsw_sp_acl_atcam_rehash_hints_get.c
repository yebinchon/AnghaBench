
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region {int dummy; } ;


 void* mlxsw_sp_acl_erp_rehash_hints_get (struct mlxsw_sp_acl_atcam_region*) ;

void *
mlxsw_sp_acl_atcam_rehash_hints_get(struct mlxsw_sp_acl_atcam_region *aregion)
{
 return mlxsw_sp_acl_erp_rehash_hints_get(aregion);
}
