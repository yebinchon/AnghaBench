
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_acl_erp_table {int base_index; struct mlxsw_sp_acl_erp_core* erp_core; } ;
struct mlxsw_sp_acl_erp_core {int num_erp_banks; } ;
struct mlxsw_sp_acl_erp {int index; } ;


 unsigned int mlxsw_sp_acl_erp_table_entry_size (struct mlxsw_sp_acl_erp_table const*) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_table_locate(const struct mlxsw_sp_acl_erp_table *erp_table,
         const struct mlxsw_sp_acl_erp *erp,
         u8 *p_erpt_bank, u8 *p_erpt_index)
{
 unsigned int entry_size = mlxsw_sp_acl_erp_table_entry_size(erp_table);
 struct mlxsw_sp_acl_erp_core *erp_core = erp_table->erp_core;
 unsigned int row;

 *p_erpt_bank = erp->index % erp_core->num_erp_banks;
 row = erp->index / erp_core->num_erp_banks;
 *p_erpt_index = erp_table->base_index + row * entry_size;
}
