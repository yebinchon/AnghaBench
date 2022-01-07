
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region {int priv; } ;


 int kfree (int ) ;

__attribute__((used)) static void
mlxsw_sp_acl_atcam_region_generic_fini(struct mlxsw_sp_acl_atcam_region *aregion)
{
 kfree(aregion->priv);
}
