
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_mr_tcam {int ruleset4; int mlxsw_sp; int acl_block; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MLXSW_REG_PEMRBT_PROTO_IPV4 ;
 int MLXSW_SP_ACL_PROFILE_MR ;
 int MLXSW_SP_L3_PROTO_IPV4 ;
 int PTR_ERR (int ) ;
 int mlxsw_afk_element_usage_fill (struct mlxsw_afk_element_usage*,int ,int ) ;
 int mlxsw_sp2_mr_tcam_bind_group (int ,int ,int ) ;
 int mlxsw_sp2_mr_tcam_usage_ipv4 ;
 int mlxsw_sp_acl_ruleset_get (int ,int ,int ,int ,struct mlxsw_afk_element_usage*) ;
 int mlxsw_sp_acl_ruleset_put (int ,int ) ;

__attribute__((used)) static int mlxsw_sp2_mr_tcam_ipv4_init(struct mlxsw_sp2_mr_tcam *mr_tcam)
{
 struct mlxsw_afk_element_usage elusage;
 int err;


 mlxsw_afk_element_usage_fill(&elusage,
         mlxsw_sp2_mr_tcam_usage_ipv4,
         ARRAY_SIZE(mlxsw_sp2_mr_tcam_usage_ipv4));
 mr_tcam->ruleset4 = mlxsw_sp_acl_ruleset_get(mr_tcam->mlxsw_sp,
           mr_tcam->acl_block,
           MLXSW_SP_L3_PROTO_IPV4,
           MLXSW_SP_ACL_PROFILE_MR,
           &elusage);

 if (IS_ERR(mr_tcam->ruleset4))
  return PTR_ERR(mr_tcam->ruleset4);


 err = mlxsw_sp2_mr_tcam_bind_group(mr_tcam->mlxsw_sp,
        MLXSW_REG_PEMRBT_PROTO_IPV4,
        mr_tcam->ruleset4);
 if (err)
  goto err_bind_group;

 return 0;

err_bind_group:
 mlxsw_sp_acl_ruleset_put(mr_tcam->mlxsw_sp, mr_tcam->ruleset4);
 return err;
}
