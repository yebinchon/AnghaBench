
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_group {int region_list; int id; int lock; struct mlxsw_sp_acl_tcam* tcam; } ;
struct mlxsw_sp_acl_tcam {int dummy; } ;


 int WARN_ON (int) ;
 int list_empty (int *) ;
 int mlxsw_sp_acl_tcam_group_id_put (struct mlxsw_sp_acl_tcam*,int ) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void mlxsw_sp_acl_tcam_group_del(struct mlxsw_sp_acl_tcam_group *group)
{
 struct mlxsw_sp_acl_tcam *tcam = group->tcam;

 mutex_destroy(&group->lock);
 mlxsw_sp_acl_tcam_group_id_put(tcam, group->id);
 WARN_ON(!list_empty(&group->region_list));
}
