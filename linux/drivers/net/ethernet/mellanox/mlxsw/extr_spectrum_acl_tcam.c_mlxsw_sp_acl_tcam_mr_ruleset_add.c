
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_mr_ruleset {int vgroup; int vchunk; } ;
struct mlxsw_sp_acl_tcam {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int MLXSW_SP_ACL_TCAM_PATTERNS_COUNT ;
 int PTR_ERR (int ) ;
 int mlxsw_sp_acl_tcam_patterns ;
 int mlxsw_sp_acl_tcam_vchunk_get (struct mlxsw_sp*,int *,int,struct mlxsw_afk_element_usage*) ;
 int mlxsw_sp_acl_tcam_vgroup_add (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam*,int *,int ,int ,struct mlxsw_afk_element_usage*,int) ;
 int mlxsw_sp_acl_tcam_vgroup_del (int *) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_mr_ruleset_add(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam *tcam,
     void *ruleset_priv,
     struct mlxsw_afk_element_usage *tmplt_elusage)
{
 struct mlxsw_sp_acl_tcam_mr_ruleset *ruleset = ruleset_priv;
 int err;

 err = mlxsw_sp_acl_tcam_vgroup_add(mlxsw_sp, tcam, &ruleset->vgroup,
        mlxsw_sp_acl_tcam_patterns,
        MLXSW_SP_ACL_TCAM_PATTERNS_COUNT,
        tmplt_elusage, 0);
 if (err)
  return err;







 ruleset->vchunk = mlxsw_sp_acl_tcam_vchunk_get(mlxsw_sp,
             &ruleset->vgroup, 1,
             tmplt_elusage);
 if (IS_ERR(ruleset->vchunk)) {
  err = PTR_ERR(ruleset->vchunk);
  goto err_chunk_get;
 }

 return 0;

err_chunk_get:
 mlxsw_sp_acl_tcam_vgroup_del(&ruleset->vgroup);
 return err;
}
