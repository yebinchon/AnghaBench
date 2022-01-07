
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_core {unsigned int* erpt_entries_size; unsigned int num_erp_banks; int erp_tables; } ;
typedef enum mlxsw_sp_acl_atcam_region_type { ____Placeholder_mlxsw_sp_acl_atcam_region_type } mlxsw_sp_acl_atcam_region_type ;


 unsigned long MLXSW_SP_ACL_ERP_GENALLOC_OFFSET ;
 int gen_pool_free (int ,unsigned long,size_t) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_table_free(struct mlxsw_sp_acl_erp_core *erp_core,
       unsigned int num_erps,
       enum mlxsw_sp_acl_atcam_region_type region_type,
       unsigned long index)
{
 unsigned long base_index;
 unsigned int entry_size;
 size_t size;

 entry_size = erp_core->erpt_entries_size[region_type];
 base_index = index + MLXSW_SP_ACL_ERP_GENALLOC_OFFSET;
 size = num_erps / erp_core->num_erp_banks * entry_size;
 gen_pool_free(erp_core->erp_tables, base_index, size);
}
