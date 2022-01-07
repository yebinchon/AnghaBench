
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_ventry {int entry; struct mlxsw_sp_acl_tcam_vchunk* vchunk; } ;
struct mlxsw_sp_acl_tcam_vchunk {TYPE_1__* vregion; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int region; } ;


 int mlxsw_sp_acl_tcam_entry_action_replace (struct mlxsw_sp*,int ,int ,struct mlxsw_sp_acl_rule_info*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_ventry_action_replace(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_ventry *ventry,
     struct mlxsw_sp_acl_rule_info *rulei)
{
 struct mlxsw_sp_acl_tcam_vchunk *vchunk = ventry->vchunk;

 return mlxsw_sp_acl_tcam_entry_action_replace(mlxsw_sp,
            vchunk->vregion->region,
            ventry->entry, rulei);
}
