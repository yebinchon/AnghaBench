
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_perpt_key_size { ____Placeholder_mlxsw_reg_perpt_key_size } mlxsw_reg_perpt_key_size ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_perpt_bf_bypass_set (char*,int) ;
 int mlxsw_reg_perpt_erp_id_set (char*,int ) ;
 int mlxsw_reg_perpt_erp_index_in_vector_set (char*,int ) ;
 int mlxsw_reg_perpt_erpt_bank_set (char*,int ) ;
 int mlxsw_reg_perpt_erpt_base_bank_set (char*,int ) ;
 int mlxsw_reg_perpt_erpt_base_index_set (char*,int ) ;
 int mlxsw_reg_perpt_erpt_index_set (char*,int ) ;
 int mlxsw_reg_perpt_key_size_set (char*,int) ;
 int mlxsw_reg_perpt_mask_memcpy_to (char*,char*) ;
 int perpt ;

__attribute__((used)) static inline void
mlxsw_reg_perpt_pack(char *payload, u8 erpt_bank, u8 erpt_index,
       enum mlxsw_reg_perpt_key_size key_size, u8 erp_id,
       u8 erpt_base_bank, u8 erpt_base_index, u8 erp_index,
       char *mask)
{
 MLXSW_REG_ZERO(perpt, payload);
 mlxsw_reg_perpt_erpt_bank_set(payload, erpt_bank);
 mlxsw_reg_perpt_erpt_index_set(payload, erpt_index);
 mlxsw_reg_perpt_key_size_set(payload, key_size);
 mlxsw_reg_perpt_bf_bypass_set(payload, 0);
 mlxsw_reg_perpt_erp_id_set(payload, erp_id);
 mlxsw_reg_perpt_erpt_base_bank_set(payload, erpt_base_bank);
 mlxsw_reg_perpt_erpt_base_index_set(payload, erpt_base_index);
 mlxsw_reg_perpt_erp_index_in_vector_set(payload, erp_index);
 mlxsw_reg_perpt_mask_memcpy_to(payload, mask);
}
