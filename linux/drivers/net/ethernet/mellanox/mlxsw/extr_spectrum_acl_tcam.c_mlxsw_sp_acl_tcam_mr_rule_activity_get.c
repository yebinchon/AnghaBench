
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_mr_rule {int ventry; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_ventry_activity_get (struct mlxsw_sp*,int *,int*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_mr_rule_activity_get(struct mlxsw_sp *mlxsw_sp,
           void *rule_priv, bool *activity)
{
 struct mlxsw_sp_acl_tcam_mr_rule *rule = rule_priv;

 return mlxsw_sp_acl_tcam_ventry_activity_get(mlxsw_sp, &rule->ventry,
           activity);
}
