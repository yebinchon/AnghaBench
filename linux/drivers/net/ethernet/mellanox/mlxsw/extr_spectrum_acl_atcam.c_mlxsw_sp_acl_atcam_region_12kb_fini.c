
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region_12kb {struct mlxsw_sp_acl_atcam_region_12kb* used_lkey_id; int lkey_ht; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_12kb* priv; } ;


 int kfree (struct mlxsw_sp_acl_atcam_region_12kb*) ;
 int rhashtable_destroy (int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_atcam_region_12kb_fini(struct mlxsw_sp_acl_atcam_region *aregion)
{
 struct mlxsw_sp_acl_atcam_region_12kb *region_12kb = aregion->priv;

 rhashtable_destroy(&region_12kb->lkey_ht);
 kfree(region_12kb->used_lkey_id);
 kfree(region_12kb);
}
