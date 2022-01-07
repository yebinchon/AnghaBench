
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_acl_atcam_region_12kb {int used_lkey_id; int lkey_ht; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_12kb* priv; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int ht_node; int id; } ;


 int __clear_bit (int ,int ) ;
 int kfree (struct mlxsw_sp_acl_atcam_lkey_id*) ;
 int mlxsw_sp_acl_atcam_lkey_id_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void
mlxsw_sp_acl_atcam_lkey_id_destroy(struct mlxsw_sp_acl_atcam_region *aregion,
       struct mlxsw_sp_acl_atcam_lkey_id *lkey_id)
{
 struct mlxsw_sp_acl_atcam_region_12kb *region_12kb = aregion->priv;
 u32 id = lkey_id->id;

 rhashtable_remove_fast(&region_12kb->lkey_ht, &lkey_id->ht_node,
          mlxsw_sp_acl_atcam_lkey_id_ht_params);
 kfree(lkey_id);
 __clear_bit(id, region_12kb->used_lkey_id);
}
