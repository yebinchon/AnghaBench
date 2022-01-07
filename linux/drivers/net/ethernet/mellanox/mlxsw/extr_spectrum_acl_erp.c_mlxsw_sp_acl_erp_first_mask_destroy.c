
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_table {int * ops; } ;
struct mlxsw_sp_acl_erp {int dummy; } ;


 int erp_no_mask_ops ;
 int mlxsw_sp_acl_erp_generic_destroy (struct mlxsw_sp_acl_erp*) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_first_mask_destroy(struct mlxsw_sp_acl_erp_table *erp_table,
        struct mlxsw_sp_acl_erp *erp)
{
 mlxsw_sp_acl_erp_generic_destroy(erp);
 erp_table->ops = &erp_no_mask_ops;
}
