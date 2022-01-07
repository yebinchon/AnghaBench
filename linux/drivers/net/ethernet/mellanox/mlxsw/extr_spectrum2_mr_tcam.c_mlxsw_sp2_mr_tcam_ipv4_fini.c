
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_mr_tcam {int ruleset4; int mlxsw_sp; } ;


 int mlxsw_sp_acl_ruleset_put (int ,int ) ;

__attribute__((used)) static void mlxsw_sp2_mr_tcam_ipv4_fini(struct mlxsw_sp2_mr_tcam *mr_tcam)
{
 mlxsw_sp_acl_ruleset_put(mr_tcam->mlxsw_sp, mr_tcam->ruleset4);
}
