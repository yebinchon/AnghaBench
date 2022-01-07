
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_flower_ruleset {int vgroup; } ;
struct mlxsw_sp_acl_tcam {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 int MLXSW_SP_ACL_TCAM_PATTERNS_COUNT ;
 int mlxsw_sp_acl_tcam_patterns ;
 int mlxsw_sp_acl_tcam_vgroup_add (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam*,int *,int ,int ,struct mlxsw_afk_element_usage*,int) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_flower_ruleset_add(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_tcam *tcam,
         void *ruleset_priv,
         struct mlxsw_afk_element_usage *tmplt_elusage)
{
 struct mlxsw_sp_acl_tcam_flower_ruleset *ruleset = ruleset_priv;

 return mlxsw_sp_acl_tcam_vgroup_add(mlxsw_sp, tcam, &ruleset->vgroup,
         mlxsw_sp_acl_tcam_patterns,
         MLXSW_SP_ACL_TCAM_PATTERNS_COUNT,
         tmplt_elusage, 1);
}
