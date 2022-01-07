
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_region {int dummy; } ;
struct mlxsw_sp_acl_ctcam_region_ops {int dummy; } ;
struct mlxsw_sp_acl_ctcam_region {int parman; struct mlxsw_sp_acl_ctcam_region_ops const* ops; struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp {int dummy; } ;


 int ENOMEM ;
 int mlxsw_sp_acl_ctcam_region_parman_ops ;
 int parman_create (int *,struct mlxsw_sp_acl_ctcam_region*) ;

int
mlxsw_sp_acl_ctcam_region_init(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_ctcam_region *cregion,
          struct mlxsw_sp_acl_tcam_region *region,
          const struct mlxsw_sp_acl_ctcam_region_ops *ops)
{
 cregion->region = region;
 cregion->ops = ops;
 cregion->parman = parman_create(&mlxsw_sp_acl_ctcam_region_parman_ops,
     cregion);
 if (!cregion->parman)
  return -ENOMEM;
 return 0;
}
