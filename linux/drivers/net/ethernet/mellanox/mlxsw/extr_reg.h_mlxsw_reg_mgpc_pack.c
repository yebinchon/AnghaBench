
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mlxsw_reg_mgpc_opcode { ____Placeholder_mlxsw_reg_mgpc_opcode } mlxsw_reg_mgpc_opcode ;
typedef enum mlxsw_reg_flow_counter_set_type { ____Placeholder_mlxsw_reg_flow_counter_set_type } mlxsw_reg_flow_counter_set_type ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mgpc ;
 int mlxsw_reg_mgpc_counter_index_set (char*,int ) ;
 int mlxsw_reg_mgpc_counter_set_type_set (char*,int) ;
 int mlxsw_reg_mgpc_opcode_set (char*,int) ;

__attribute__((used)) static inline void mlxsw_reg_mgpc_pack(char *payload, u32 counter_index,
           enum mlxsw_reg_mgpc_opcode opcode,
           enum mlxsw_reg_flow_counter_set_type set_type)
{
 MLXSW_REG_ZERO(mgpc, payload);
 mlxsw_reg_mgpc_counter_index_set(payload, counter_index);
 mlxsw_reg_mgpc_counter_set_type_set(payload, set_type);
 mlxsw_reg_mgpc_opcode_set(payload, opcode);
}
