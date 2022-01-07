
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_acl_tcam_region {int aregion; } ;


 void* mlxsw_sp_acl_atcam_rehash_hints_get (int *) ;

__attribute__((used)) static void *mlxsw_sp2_acl_tcam_region_rehash_hints_get(void *region_priv)
{
 struct mlxsw_sp2_acl_tcam_region *region = region_priv;

 return mlxsw_sp_acl_atcam_rehash_hints_get(&region->aregion);
}
