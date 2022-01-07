
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlxsw_sp_acl_atcam_region_12kb {scalar_t__ max_lkey_id; int used_lkey_id; int lkey_ht; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_12kb* priv; } ;
struct mlxsw_sp_acl_atcam_lkey_id_ht_key {int dummy; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int ht_node; int refcnt; int ht_key; scalar_t__ id; } ;


 int ENOBUFS ;
 int ENOMEM ;
 struct mlxsw_sp_acl_atcam_lkey_id* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __clear_bit (scalar_t__,int ) ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int kfree (struct mlxsw_sp_acl_atcam_lkey_id*) ;
 struct mlxsw_sp_acl_atcam_lkey_id* kzalloc (int,int ) ;
 int memcpy (int *,struct mlxsw_sp_acl_atcam_lkey_id_ht_key*,int) ;
 int mlxsw_sp_acl_atcam_lkey_id_ht_params ;
 int refcount_set (int *,int) ;
 int rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static struct mlxsw_sp_acl_atcam_lkey_id *
mlxsw_sp_acl_atcam_lkey_id_create(struct mlxsw_sp_acl_atcam_region *aregion,
      struct mlxsw_sp_acl_atcam_lkey_id_ht_key *ht_key)
{
 struct mlxsw_sp_acl_atcam_region_12kb *region_12kb = aregion->priv;
 struct mlxsw_sp_acl_atcam_lkey_id *lkey_id;
 u32 id;
 int err;

 id = find_first_zero_bit(region_12kb->used_lkey_id,
     region_12kb->max_lkey_id);
 if (id < region_12kb->max_lkey_id)
  __set_bit(id, region_12kb->used_lkey_id);
 else
  return ERR_PTR(-ENOBUFS);

 lkey_id = kzalloc(sizeof(*lkey_id), GFP_KERNEL);
 if (!lkey_id) {
  err = -ENOMEM;
  goto err_lkey_id_alloc;
 }

 lkey_id->id = id;
 memcpy(&lkey_id->ht_key, ht_key, sizeof(*ht_key));
 refcount_set(&lkey_id->refcnt, 1);

 err = rhashtable_insert_fast(&region_12kb->lkey_ht,
         &lkey_id->ht_node,
         mlxsw_sp_acl_atcam_lkey_id_ht_params);
 if (err)
  goto err_rhashtable_insert;

 return lkey_id;

err_rhashtable_insert:
 kfree(lkey_id);
err_lkey_id_alloc:
 __clear_bit(id, region_12kb->used_lkey_id);
 return ERR_PTR(err);
}
