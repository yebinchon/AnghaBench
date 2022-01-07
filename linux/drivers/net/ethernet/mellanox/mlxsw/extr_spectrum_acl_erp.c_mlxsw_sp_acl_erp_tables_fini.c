
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_core {int erp_tables; int bf; } ;
struct mlxsw_sp {int dummy; } ;


 int gen_pool_destroy (int ) ;
 int mlxsw_sp_acl_bf_fini (int ) ;

__attribute__((used)) static void mlxsw_sp_acl_erp_tables_fini(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_erp_core *erp_core)
{
 mlxsw_sp_acl_bf_fini(erp_core->bf);
 gen_pool_destroy(erp_core->erp_tables);
}
