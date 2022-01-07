
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vgroup {int vregion_list; int group; int vchunk_ht; } ;


 int WARN_ON (int) ;
 int list_empty (int *) ;
 int mlxsw_sp_acl_tcam_group_del (int *) ;
 int rhashtable_destroy (int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vgroup_del(struct mlxsw_sp_acl_tcam_vgroup *vgroup)
{
 rhashtable_destroy(&vgroup->vchunk_ht);
 mlxsw_sp_acl_tcam_group_del(&vgroup->group);
 WARN_ON(!list_empty(&vgroup->vregion_list));
}
