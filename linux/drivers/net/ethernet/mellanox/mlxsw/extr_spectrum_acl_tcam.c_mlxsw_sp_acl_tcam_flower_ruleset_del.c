
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_flower_ruleset {int vgroup; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_vgroup_del (int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_flower_ruleset_del(struct mlxsw_sp *mlxsw_sp,
         void *ruleset_priv)
{
 struct mlxsw_sp_acl_tcam_flower_ruleset *ruleset = ruleset_priv;

 mlxsw_sp_acl_tcam_vgroup_del(&ruleset->vgroup);
}
