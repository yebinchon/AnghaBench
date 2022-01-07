
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int num_atcam_erps; } ;
struct mlxsw_sp_acl_erp {int id; int list; int key; struct mlxsw_sp_acl_erp_table* erp_table; } ;


 int kfree (struct mlxsw_sp_acl_erp*) ;
 int list_del (int *) ;
 int mlxsw_sp_acl_erp_id_put (struct mlxsw_sp_acl_erp_table*,int ) ;
 int mlxsw_sp_acl_erp_master_mask_clear (struct mlxsw_sp_acl_erp_table*,int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_generic_destroy(struct mlxsw_sp_acl_erp *erp)
{
 struct mlxsw_sp_acl_erp_table *erp_table = erp->erp_table;

 mlxsw_sp_acl_erp_master_mask_clear(erp_table, &erp->key);
 erp_table->num_atcam_erps--;
 list_del(&erp->list);
 mlxsw_sp_acl_erp_id_put(erp_table, erp->id);
 kfree(erp);
}
