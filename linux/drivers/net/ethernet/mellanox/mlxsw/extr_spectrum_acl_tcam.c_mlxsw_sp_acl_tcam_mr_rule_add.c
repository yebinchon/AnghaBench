
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_mr_ruleset {int vgroup; } ;
struct mlxsw_sp_acl_tcam_mr_rule {int ventry; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_ventry_add (struct mlxsw_sp*,int *,int *,struct mlxsw_sp_acl_rule_info*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_mr_rule_add(struct mlxsw_sp *mlxsw_sp, void *ruleset_priv,
         void *rule_priv,
         struct mlxsw_sp_acl_rule_info *rulei)
{
 struct mlxsw_sp_acl_tcam_mr_ruleset *ruleset = ruleset_priv;
 struct mlxsw_sp_acl_tcam_mr_rule *rule = rule_priv;

 return mlxsw_sp_acl_tcam_ventry_add(mlxsw_sp, &ruleset->vgroup,
        &rule->ventry, rulei);
}
