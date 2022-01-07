
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_erp_table {TYPE_1__* ops; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;
struct TYPE_2__ {int (* erp_destroy ) (struct mlxsw_sp_acl_erp_table*,void*) ;} ;


 int stub1 (struct mlxsw_sp_acl_erp_table*,void*) ;

__attribute__((used)) static void mlxsw_sp_acl_erp_root_destroy(void *priv, void *root_priv)
{
 struct mlxsw_sp_acl_atcam_region *aregion = priv;
 struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;

 erp_table->ops->erp_destroy(erp_table, root_priv);
}
