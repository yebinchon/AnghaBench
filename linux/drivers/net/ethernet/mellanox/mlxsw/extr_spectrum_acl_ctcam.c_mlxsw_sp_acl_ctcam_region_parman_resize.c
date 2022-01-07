
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct mlxsw_sp_acl_tcam_region {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_ctcam_region {struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp {int core; } ;


 int ACL_MAX_TCAM_RULES ;
 int EINVAL ;
 unsigned long MLXSW_CORE_RES_GET (int ,int ) ;
 int mlxsw_sp_acl_ctcam_region_resize (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*,unsigned long) ;

__attribute__((used)) static int mlxsw_sp_acl_ctcam_region_parman_resize(void *priv,
         unsigned long new_count)
{
 struct mlxsw_sp_acl_ctcam_region *cregion = priv;
 struct mlxsw_sp_acl_tcam_region *region = cregion->region;
 struct mlxsw_sp *mlxsw_sp = region->mlxsw_sp;
 u64 max_tcam_rules;

 max_tcam_rules = MLXSW_CORE_RES_GET(mlxsw_sp->core, ACL_MAX_TCAM_RULES);
 if (new_count > max_tcam_rules)
  return -EINVAL;
 return mlxsw_sp_acl_ctcam_region_resize(mlxsw_sp, region, new_count);
}
