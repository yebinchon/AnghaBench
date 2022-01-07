
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region {int entries_ht; } ;
struct mlxsw_sp_acl_atcam_entry {int erp_mask; int list; int ht_node; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int mlxsw_sp_acl_atcam_entries_ht_params ;
 int mlxsw_sp_acl_atcam_region_entry_remove (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*) ;
 int mlxsw_sp_acl_erp_bf_remove (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,int ,struct mlxsw_sp_acl_atcam_entry*) ;
 int mlxsw_sp_acl_erp_mask_put (struct mlxsw_sp_acl_atcam_region*,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void
__mlxsw_sp_acl_atcam_entry_del(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_atcam_region *aregion,
          struct mlxsw_sp_acl_atcam_entry *aentry)
{
 mlxsw_sp_acl_atcam_region_entry_remove(mlxsw_sp, aregion, aentry);
 mlxsw_sp_acl_erp_bf_remove(mlxsw_sp, aregion, aentry->erp_mask, aentry);
 rhashtable_remove_fast(&aregion->entries_ht, &aentry->ht_node,
          mlxsw_sp_acl_atcam_entries_ht_params);
 list_del(&aentry->list);
 mlxsw_sp_acl_erp_mask_put(aregion, aentry->erp_mask);
}
