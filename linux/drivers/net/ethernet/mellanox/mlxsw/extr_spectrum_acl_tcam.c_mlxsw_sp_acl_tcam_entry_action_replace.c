
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_region {int priv; } ;
struct mlxsw_sp_acl_tcam_ops {int (* entry_action_replace ) (struct mlxsw_sp*,int ,int ,struct mlxsw_sp_acl_rule_info*) ;} ;
struct mlxsw_sp_acl_tcam_entry {int priv; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;


 int stub1 (struct mlxsw_sp*,int ,int ,struct mlxsw_sp_acl_rule_info*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_entry_action_replace(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_acl_tcam_region *region,
           struct mlxsw_sp_acl_tcam_entry *entry,
           struct mlxsw_sp_acl_rule_info *rulei)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

 return ops->entry_action_replace(mlxsw_sp, region->priv,
      entry->priv, rulei);
}
