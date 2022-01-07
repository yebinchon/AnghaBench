
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_ventry {int entry; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_entry_activity_get (struct mlxsw_sp*,int ,int*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_ventry_activity_get(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_tcam_ventry *ventry,
          bool *activity)
{
 return mlxsw_sp_acl_tcam_entry_activity_get(mlxsw_sp,
          ventry->entry, activity);
}
