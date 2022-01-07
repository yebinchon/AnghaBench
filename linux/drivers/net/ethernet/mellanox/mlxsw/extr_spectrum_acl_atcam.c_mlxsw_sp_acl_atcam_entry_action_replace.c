
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int cregion; } ;
struct mlxsw_sp_acl_atcam_entry {int centry; } ;
struct mlxsw_sp {int dummy; } ;


 int __mlxsw_sp_acl_atcam_entry_action_replace (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*,struct mlxsw_sp_acl_rule_info*) ;
 scalar_t__ mlxsw_sp_acl_atcam_is_centry (struct mlxsw_sp_acl_atcam_entry*) ;
 int mlxsw_sp_acl_ctcam_entry_action_replace (struct mlxsw_sp*,int *,int *,struct mlxsw_sp_acl_rule_info*) ;

int
mlxsw_sp_acl_atcam_entry_action_replace(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_atcam_region *aregion,
     struct mlxsw_sp_acl_atcam_entry *aentry,
     struct mlxsw_sp_acl_rule_info *rulei)
{
 int err;

 if (mlxsw_sp_acl_atcam_is_centry(aentry))
  err = mlxsw_sp_acl_ctcam_entry_action_replace(mlxsw_sp,
             &aregion->cregion,
             &aentry->centry,
             rulei);
 else
  err = __mlxsw_sp_acl_atcam_entry_action_replace(mlxsw_sp,
        aregion, aentry,
        rulei);

 return err;
}
