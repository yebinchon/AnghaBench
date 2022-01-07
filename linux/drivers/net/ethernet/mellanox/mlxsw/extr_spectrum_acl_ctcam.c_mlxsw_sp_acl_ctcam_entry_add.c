
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp_acl_ctcam_region {int parman; } ;
struct mlxsw_sp_acl_ctcam_entry {int parman_item; } ;
struct mlxsw_sp_acl_ctcam_chunk {int parman_prio; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_ctcam_region_entry_insert (struct mlxsw_sp*,struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*,struct mlxsw_sp_acl_rule_info*,int) ;
 int parman_item_add (int ,int *,int *) ;
 int parman_item_remove (int ,int *,int *) ;

int mlxsw_sp_acl_ctcam_entry_add(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_ctcam_region *cregion,
     struct mlxsw_sp_acl_ctcam_chunk *cchunk,
     struct mlxsw_sp_acl_ctcam_entry *centry,
     struct mlxsw_sp_acl_rule_info *rulei,
     bool fillup_priority)
{
 int err;

 err = parman_item_add(cregion->parman, &cchunk->parman_prio,
         &centry->parman_item);
 if (err)
  return err;

 err = mlxsw_sp_acl_ctcam_region_entry_insert(mlxsw_sp, cregion, centry,
           rulei, fillup_priority);
 if (err)
  goto err_rule_insert;
 return 0;

err_rule_insert:
 parman_item_remove(cregion->parman, &cchunk->parman_prio,
      &centry->parman_item);
 return err;
}
