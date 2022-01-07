
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
mlxsw_sp1_acl_tcam_entry_action_replace(struct mlxsw_sp *mlxsw_sp,
     void *region_priv, void *entry_priv,
     struct mlxsw_sp_acl_rule_info *rulei)
{
 return -EOPNOTSUPP;
}
