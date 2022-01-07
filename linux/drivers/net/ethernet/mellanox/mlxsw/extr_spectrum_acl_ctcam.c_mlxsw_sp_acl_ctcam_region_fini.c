
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ctcam_region {int parman; } ;


 int parman_destroy (int ) ;

void mlxsw_sp_acl_ctcam_region_fini(struct mlxsw_sp_acl_ctcam_region *cregion)
{
 parman_destroy(cregion->parman);
}
