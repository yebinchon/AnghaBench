
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_acl_tcam_entry {int act_block; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_afa_block_activity_get (int ,int*) ;

__attribute__((used)) static int
mlxsw_sp2_acl_tcam_entry_activity_get(struct mlxsw_sp *mlxsw_sp,
          void *region_priv, void *entry_priv,
          bool *activity)
{
 struct mlxsw_sp2_acl_tcam_entry *entry = entry_priv;

 return mlxsw_afa_block_activity_get(entry->act_block, activity);
}
