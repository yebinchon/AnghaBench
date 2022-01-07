
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp2_mr_tcam {struct mlxsw_sp_acl_ruleset* ruleset6; struct mlxsw_sp_acl_ruleset* ruleset4; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;





__attribute__((used)) static struct mlxsw_sp_acl_ruleset *
mlxsw_sp2_mr_tcam_proto_ruleset(struct mlxsw_sp2_mr_tcam *mr_tcam,
    enum mlxsw_sp_l3proto proto)
{
 switch (proto) {
 case 129:
  return mr_tcam->ruleset4;
 case 128:
  return mr_tcam->ruleset6;
 }
 return ((void*)0);
}
