
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ctcam_region {int parman; } ;
struct mlxsw_sp_acl_ctcam_entry {int parman_item; } ;
struct mlxsw_sp_acl_ctcam_chunk {int parman_prio; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_ctcam_region_entry_remove (struct mlxsw_sp*,struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*) ;
 int parman_item_remove (int ,int *,int *) ;

void mlxsw_sp_acl_ctcam_entry_del(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_ctcam_region *cregion,
      struct mlxsw_sp_acl_ctcam_chunk *cchunk,
      struct mlxsw_sp_acl_ctcam_entry *centry)
{
 mlxsw_sp_acl_ctcam_region_entry_remove(mlxsw_sp, cregion, centry);
 parman_item_remove(cregion->parman, &cchunk->parman_prio,
      &centry->parman_item);
}
