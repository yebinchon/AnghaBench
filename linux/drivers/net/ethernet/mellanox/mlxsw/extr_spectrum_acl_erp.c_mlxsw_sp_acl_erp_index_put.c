
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_acl_erp_table {int erp_index_bitmap; } ;


 int __clear_bit (int ,int ) ;

__attribute__((used)) static void mlxsw_sp_acl_erp_index_put(struct mlxsw_sp_acl_erp_table *erp_table,
           u8 index)
{
 __clear_bit(index, erp_table->erp_index_bitmap);
}
