
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int objagg_lock; int objagg; } ;
struct mlxsw_sp_acl_erp_mask {int dummy; } ;
struct mlxsw_sp_acl_erp_key {int ctcam; int mask; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;


 struct mlxsw_sp_acl_erp_mask* ERR_CAST (struct objagg_obj*) ;
 scalar_t__ IS_ERR (struct objagg_obj*) ;
 int MLXSW_REG_PTCEX_FLEX_KEY_BLOCKS_LEN ;
 int memcpy (int ,char const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct objagg_obj* objagg_obj_get (int ,struct mlxsw_sp_acl_erp_key*) ;

struct mlxsw_sp_acl_erp_mask *
mlxsw_sp_acl_erp_mask_get(struct mlxsw_sp_acl_atcam_region *aregion,
     const char *mask, bool ctcam)
{
 struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;
 struct mlxsw_sp_acl_erp_key key;
 struct objagg_obj *objagg_obj;

 memcpy(key.mask, mask, MLXSW_REG_PTCEX_FLEX_KEY_BLOCKS_LEN);
 key.ctcam = ctcam;
 mutex_lock(&erp_table->objagg_lock);
 objagg_obj = objagg_obj_get(erp_table->objagg, &key);
 mutex_unlock(&erp_table->objagg_lock);
 if (IS_ERR(objagg_obj))
  return ERR_CAST(objagg_obj);
 return (struct mlxsw_sp_acl_erp_mask *) objagg_obj;
}
