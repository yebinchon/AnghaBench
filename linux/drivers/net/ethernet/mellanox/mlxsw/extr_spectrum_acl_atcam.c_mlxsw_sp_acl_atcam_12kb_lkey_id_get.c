
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_sp_acl_tcam_region {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_atcam_region_12kb {int lkey_ht; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_tcam_region* region; struct mlxsw_sp_acl_atcam_region_12kb* priv; } ;
struct TYPE_2__ {int member_0; } ;
struct mlxsw_sp_acl_atcam_lkey_id_ht_key {int erp_id; int enc_key; TYPE_1__ member_0; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int refcnt; } ;
struct mlxsw_sp {int acl; } ;
struct mlxsw_afk {int dummy; } ;


 int MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_END ;
 int MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_START ;
 int memcpy (int ,char*,int) ;
 int mlxsw_afk_clear (struct mlxsw_afk*,int ,int ,int ) ;
 struct mlxsw_afk* mlxsw_sp_acl_afk (int ) ;
 struct mlxsw_sp_acl_atcam_lkey_id* mlxsw_sp_acl_atcam_lkey_id_create (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id_ht_key*) ;
 int mlxsw_sp_acl_atcam_lkey_id_ht_params ;
 int refcount_inc (int *) ;
 struct mlxsw_sp_acl_atcam_lkey_id* rhashtable_lookup_fast (int *,struct mlxsw_sp_acl_atcam_lkey_id_ht_key*,int ) ;

__attribute__((used)) static struct mlxsw_sp_acl_atcam_lkey_id *
mlxsw_sp_acl_atcam_12kb_lkey_id_get(struct mlxsw_sp_acl_atcam_region *aregion,
        char *enc_key, u8 erp_id)
{
 struct mlxsw_sp_acl_atcam_region_12kb *region_12kb = aregion->priv;
 struct mlxsw_sp_acl_tcam_region *region = aregion->region;
 struct mlxsw_sp_acl_atcam_lkey_id_ht_key ht_key = {{ 0 } };
 struct mlxsw_sp *mlxsw_sp = region->mlxsw_sp;
 struct mlxsw_afk *afk = mlxsw_sp_acl_afk(mlxsw_sp->acl);
 struct mlxsw_sp_acl_atcam_lkey_id *lkey_id;

 memcpy(ht_key.enc_key, enc_key, sizeof(ht_key.enc_key));
 mlxsw_afk_clear(afk, ht_key.enc_key,
   MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_START,
   MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_END);
 ht_key.erp_id = erp_id;
 lkey_id = rhashtable_lookup_fast(&region_12kb->lkey_ht, &ht_key,
      mlxsw_sp_acl_atcam_lkey_id_ht_params);
 if (lkey_id) {
  refcount_inc(&lkey_id->refcnt);
  return lkey_id;
 }

 return mlxsw_sp_acl_atcam_lkey_id_create(aregion, &ht_key);
}
