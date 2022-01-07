
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ruleset {int rule_ht; } ;
struct mlxsw_sp_acl_rule {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_rule_ht_params ;
 struct mlxsw_sp_acl_rule* rhashtable_lookup_fast (int *,unsigned long*,int ) ;

struct mlxsw_sp_acl_rule *
mlxsw_sp_acl_rule_lookup(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_acl_ruleset *ruleset,
    unsigned long cookie)
{
 return rhashtable_lookup_fast(&ruleset->rule_ht, &cookie,
           mlxsw_sp_acl_rule_ht_params);
}
