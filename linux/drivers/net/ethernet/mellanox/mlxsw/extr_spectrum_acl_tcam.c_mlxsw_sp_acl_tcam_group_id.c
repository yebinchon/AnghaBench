
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_acl_tcam_group {int id; } ;



__attribute__((used)) static u16
mlxsw_sp_acl_tcam_group_id(struct mlxsw_sp_acl_tcam_group *group)
{
 return group->id;
}
