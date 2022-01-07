
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_region {int list; struct mlxsw_sp_acl_tcam_group* group; } ;
struct mlxsw_sp_acl_tcam_group {int lock; int region_count; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int mlxsw_sp_acl_tcam_group_update (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_group_region_detach(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_tcam_region *region)
{
 struct mlxsw_sp_acl_tcam_group *group = region->group;

 mutex_lock(&group->lock);
 list_del(&region->list);
 group->region_count--;
 mlxsw_sp_acl_tcam_group_update(mlxsw_sp, group);
 mutex_unlock(&group->lock);
}
