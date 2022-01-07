
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route_key {int vrid; int proto; } ;
struct mlxsw_sp_acl_rule_info {unsigned int priority; } ;
struct mlxsw_sp_acl_rule {int dummy; } ;


 int GENMASK (int,int ) ;
 int MLXSW_AFK_ELEMENT_VIRT_ROUTER_0_7 ;
 int MLXSW_AFK_ELEMENT_VIRT_ROUTER_8_10 ;


 void mlxsw_sp2_mr_tcam_rule_parse4 (struct mlxsw_sp_acl_rule_info*,struct mlxsw_sp_mr_route_key*) ;
 void mlxsw_sp2_mr_tcam_rule_parse6 (struct mlxsw_sp_acl_rule_info*,struct mlxsw_sp_mr_route_key*) ;
 struct mlxsw_sp_acl_rule_info* mlxsw_sp_acl_rule_rulei (struct mlxsw_sp_acl_rule*) ;
 int mlxsw_sp_acl_rulei_keymask_u32 (struct mlxsw_sp_acl_rule_info*,int ,int,int ) ;

__attribute__((used)) static void
mlxsw_sp2_mr_tcam_rule_parse(struct mlxsw_sp_acl_rule *rule,
        struct mlxsw_sp_mr_route_key *key,
        unsigned int priority)
{
 struct mlxsw_sp_acl_rule_info *rulei;

 rulei = mlxsw_sp_acl_rule_rulei(rule);
 rulei->priority = priority;
 mlxsw_sp_acl_rulei_keymask_u32(rulei, MLXSW_AFK_ELEMENT_VIRT_ROUTER_0_7,
           key->vrid, GENMASK(7, 0));
 mlxsw_sp_acl_rulei_keymask_u32(rulei,
           MLXSW_AFK_ELEMENT_VIRT_ROUTER_8_10,
           key->vrid >> 8, GENMASK(2, 0));
 switch (key->proto) {
 case 129:
  return mlxsw_sp2_mr_tcam_rule_parse4(rulei, key);
 case 128:
  return mlxsw_sp2_mr_tcam_rule_parse6(rulei, key);
 }
}
