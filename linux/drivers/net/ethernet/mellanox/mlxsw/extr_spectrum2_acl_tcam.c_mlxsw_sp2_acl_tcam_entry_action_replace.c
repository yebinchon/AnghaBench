
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int act_block; } ;
struct mlxsw_sp2_acl_tcam_region {int aregion; } ;
struct mlxsw_sp2_acl_tcam_entry {int aentry; int act_block; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_atcam_entry_action_replace (struct mlxsw_sp*,int *,int *,struct mlxsw_sp_acl_rule_info*) ;

__attribute__((used)) static int
mlxsw_sp2_acl_tcam_entry_action_replace(struct mlxsw_sp *mlxsw_sp,
     void *region_priv, void *entry_priv,
     struct mlxsw_sp_acl_rule_info *rulei)
{
 struct mlxsw_sp2_acl_tcam_region *region = region_priv;
 struct mlxsw_sp2_acl_tcam_entry *entry = entry_priv;

 entry->act_block = rulei->act_block;
 return mlxsw_sp_acl_atcam_entry_action_replace(mlxsw_sp,
             &region->aregion,
             &entry->aentry, rulei);
}
