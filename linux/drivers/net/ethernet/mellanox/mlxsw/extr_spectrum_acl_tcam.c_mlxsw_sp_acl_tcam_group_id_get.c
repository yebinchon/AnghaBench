
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_sp_acl_tcam {scalar_t__ max_groups; int used_groups; } ;


 int ENOBUFS ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static int mlxsw_sp_acl_tcam_group_id_get(struct mlxsw_sp_acl_tcam *tcam,
       u16 *p_id)
{
 u16 id;

 id = find_first_zero_bit(tcam->used_groups, tcam->max_groups);
 if (id < tcam->max_groups) {
  __set_bit(id, tcam->used_groups);
  *p_id = id;
  return 0;
 }
 return -ENOBUFS;
}
