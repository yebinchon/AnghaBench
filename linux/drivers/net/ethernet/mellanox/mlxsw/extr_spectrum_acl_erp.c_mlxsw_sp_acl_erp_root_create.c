
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_erp_table {TYPE_1__* ops; } ;
struct mlxsw_sp_acl_erp_key {int ctcam; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;
struct TYPE_2__ {void* (* erp_create ) (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ;} ;


 int ENOBUFS ;
 void* ERR_PTR (int ) ;
 unsigned int MLXSW_SP_ACL_ERP_MAX_PER_REGION ;
 unsigned int OBJAGG_OBJ_ROOT_ID_INVALID ;
 void* stub1 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ;

__attribute__((used)) static void *mlxsw_sp_acl_erp_root_create(void *priv, void *obj,
       unsigned int root_id)
{
 struct mlxsw_sp_acl_atcam_region *aregion = priv;
 struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;
 struct mlxsw_sp_acl_erp_key *key = obj;

 if (!key->ctcam &&
     root_id != OBJAGG_OBJ_ROOT_ID_INVALID &&
     root_id >= MLXSW_SP_ACL_ERP_MAX_PER_REGION)
  return ERR_PTR(-ENOBUFS);
 return erp_table->ops->erp_create(erp_table, key);
}
