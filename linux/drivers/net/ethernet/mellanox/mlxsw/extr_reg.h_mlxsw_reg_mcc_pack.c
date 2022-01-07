
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_mcc_instruction { ____Placeholder_mlxsw_reg_mcc_instruction } mlxsw_reg_mcc_instruction ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mcc ;
 int mlxsw_reg_mcc_component_index_set (char*,int ) ;
 int mlxsw_reg_mcc_component_size_set (char*,int ) ;
 int mlxsw_reg_mcc_instruction_set (char*,int) ;
 int mlxsw_reg_mcc_update_handle_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mcc_pack(char *payload,
          enum mlxsw_reg_mcc_instruction instr,
          u16 component_index, u32 update_handle,
          u32 component_size)
{
 MLXSW_REG_ZERO(mcc, payload);
 mlxsw_reg_mcc_instruction_set(payload, instr);
 mlxsw_reg_mcc_component_index_set(payload, component_index);
 mlxsw_reg_mcc_update_handle_set(payload, update_handle);
 mlxsw_reg_mcc_component_size_set(payload, component_size);
}
