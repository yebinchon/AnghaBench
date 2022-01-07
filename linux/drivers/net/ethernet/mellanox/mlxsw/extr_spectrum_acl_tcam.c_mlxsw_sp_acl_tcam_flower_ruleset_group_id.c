
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int group; } ;
struct mlxsw_sp_acl_tcam_flower_ruleset {TYPE_1__ vgroup; } ;


 int mlxsw_sp_acl_tcam_group_id (int *) ;

__attribute__((used)) static u16
mlxsw_sp_acl_tcam_flower_ruleset_group_id(void *ruleset_priv)
{
 struct mlxsw_sp_acl_tcam_flower_ruleset *ruleset = ruleset_priv;

 return mlxsw_sp_acl_tcam_group_id(&ruleset->vgroup.group);
}
