
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_acl_tcam_region {int cregion; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp1_acl_ctcam_region_catchall_del (struct mlxsw_sp*,struct mlxsw_sp1_acl_tcam_region*) ;
 int mlxsw_sp_acl_ctcam_region_fini (int *) ;

__attribute__((used)) static void
mlxsw_sp1_acl_tcam_region_fini(struct mlxsw_sp *mlxsw_sp, void *region_priv)
{
 struct mlxsw_sp1_acl_tcam_region *region = region_priv;

 mlxsw_sp1_acl_ctcam_region_catchall_del(mlxsw_sp, region);
 mlxsw_sp_acl_ctcam_region_fini(&region->cregion);
}
