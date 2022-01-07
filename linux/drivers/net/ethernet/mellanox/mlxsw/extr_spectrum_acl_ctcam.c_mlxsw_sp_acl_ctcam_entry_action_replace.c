
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int priority; int act_block; } ;
struct mlxsw_sp_acl_ctcam_region {int dummy; } ;
struct mlxsw_sp_acl_ctcam_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_ctcam_region_entry_action_replace (struct mlxsw_sp*,struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*,int ,int ) ;

int mlxsw_sp_acl_ctcam_entry_action_replace(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_ctcam_region *cregion,
         struct mlxsw_sp_acl_ctcam_entry *centry,
         struct mlxsw_sp_acl_rule_info *rulei)
{
 return mlxsw_sp_acl_ctcam_region_entry_action_replace(mlxsw_sp, cregion,
             centry,
             rulei->act_block,
             rulei->priority);
}
