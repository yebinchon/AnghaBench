
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_bf {unsigned int bank_size; } ;



__attribute__((used)) static unsigned int
mlxsw_sp_acl_bf_rule_count_index_get(struct mlxsw_sp_acl_bf *bf,
         unsigned int erp_bank,
         unsigned int bf_index)
{
 return erp_bank * bf->bank_size + bf_index;
}
