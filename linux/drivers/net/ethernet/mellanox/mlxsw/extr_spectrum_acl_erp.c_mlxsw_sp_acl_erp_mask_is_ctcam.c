
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct mlxsw_sp_acl_erp_mask {int dummy; } ;
struct mlxsw_sp_acl_erp_key {int ctcam; } ;


 struct mlxsw_sp_acl_erp_key* objagg_obj_raw (struct objagg_obj*) ;

bool
mlxsw_sp_acl_erp_mask_is_ctcam(const struct mlxsw_sp_acl_erp_mask *erp_mask)
{
 struct objagg_obj *objagg_obj = (struct objagg_obj *) erp_mask;
 const struct mlxsw_sp_acl_erp_key *key = objagg_obj_raw(objagg_obj);

 return key->ctcam;
}
