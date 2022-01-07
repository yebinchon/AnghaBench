
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int objagg_lock; int objagg; } ;
struct mlxsw_sp_acl_erp_mask {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int objagg_obj_put (int ,struct objagg_obj*) ;

void mlxsw_sp_acl_erp_mask_put(struct mlxsw_sp_acl_atcam_region *aregion,
          struct mlxsw_sp_acl_erp_mask *erp_mask)
{
 struct objagg_obj *objagg_obj = (struct objagg_obj *) erp_mask;
 struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;

 mutex_lock(&erp_table->objagg_lock);
 objagg_obj_put(erp_table->objagg, objagg_obj);
 mutex_unlock(&erp_table->objagg_lock);
}
