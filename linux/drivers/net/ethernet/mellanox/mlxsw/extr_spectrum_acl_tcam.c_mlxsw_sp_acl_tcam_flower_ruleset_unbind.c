
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {int dummy; } ;
struct TYPE_2__ {int group; } ;
struct mlxsw_sp_acl_tcam_flower_ruleset {TYPE_1__ vgroup; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_group_unbind (struct mlxsw_sp*,int *,struct mlxsw_sp_port*,int) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_flower_ruleset_unbind(struct mlxsw_sp *mlxsw_sp,
     void *ruleset_priv,
     struct mlxsw_sp_port *mlxsw_sp_port,
     bool ingress)
{
 struct mlxsw_sp_acl_tcam_flower_ruleset *ruleset = ruleset_priv;

 mlxsw_sp_acl_tcam_group_unbind(mlxsw_sp, &ruleset->vgroup.group,
           mlxsw_sp_port, ingress);
}
