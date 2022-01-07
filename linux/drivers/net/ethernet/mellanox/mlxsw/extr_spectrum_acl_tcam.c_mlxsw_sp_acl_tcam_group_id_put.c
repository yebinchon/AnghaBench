
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_acl_tcam {int used_groups; } ;


 int __clear_bit (int ,int ) ;

__attribute__((used)) static void mlxsw_sp_acl_tcam_group_id_put(struct mlxsw_sp_acl_tcam *tcam,
        u16 id)
{
 __clear_bit(id, tcam->used_groups);
}
