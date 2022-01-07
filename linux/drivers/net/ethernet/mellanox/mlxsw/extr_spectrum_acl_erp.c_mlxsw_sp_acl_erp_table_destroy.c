
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int objagg; int objagg_lock; int atcam_erps_list; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_acl_erp_table*) ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;
 int objagg_destroy (int ) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_table_destroy(struct mlxsw_sp_acl_erp_table *erp_table)
{
 WARN_ON(!list_empty(&erp_table->atcam_erps_list));
 mutex_destroy(&erp_table->objagg_lock);
 objagg_destroy(erp_table->objagg);
 kfree(erp_table);
}
