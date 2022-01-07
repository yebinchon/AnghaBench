
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_group {int id; int region_list; int lock; struct mlxsw_sp_acl_tcam* tcam; } ;
struct mlxsw_sp_acl_tcam {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int mlxsw_sp_acl_tcam_group_id_get (struct mlxsw_sp_acl_tcam*,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_group_add(struct mlxsw_sp_acl_tcam *tcam,
       struct mlxsw_sp_acl_tcam_group *group)
{
 int err;

 group->tcam = tcam;
 mutex_init(&group->lock);
 INIT_LIST_HEAD(&group->region_list);

 err = mlxsw_sp_acl_tcam_group_id_get(tcam, &group->id);
 if (err)
  return err;

 return 0;
}
