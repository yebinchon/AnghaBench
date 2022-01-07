
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_flower_rule {int ventry; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_ventry_del (struct mlxsw_sp*,int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_flower_rule_del(struct mlxsw_sp *mlxsw_sp, void *rule_priv)
{
 struct mlxsw_sp_acl_tcam_flower_rule *rule = rule_priv;

 mlxsw_sp_acl_tcam_ventry_del(mlxsw_sp, &rule->ventry);
}
