
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mlxsw_reg_ricnt_opcode { ____Placeholder_mlxsw_reg_ricnt_opcode } mlxsw_reg_ricnt_opcode ;


 int MLXSW_REG_RICNT_COUNTER_SET_TYPE_BASIC ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ricnt_counter_index_set (char*,int ) ;
 int mlxsw_reg_ricnt_counter_set_type_set (char*,int ) ;
 int mlxsw_reg_ricnt_op_set (char*,int) ;
 int ricnt ;

__attribute__((used)) static inline void mlxsw_reg_ricnt_pack(char *payload, u32 index,
     enum mlxsw_reg_ricnt_opcode op)
{
 MLXSW_REG_ZERO(ricnt, payload);
 mlxsw_reg_ricnt_op_set(payload, op);
 mlxsw_reg_ricnt_counter_index_set(payload, index);
 mlxsw_reg_ricnt_counter_set_type_set(payload,
          MLXSW_REG_RICNT_COUNTER_SET_TYPE_BASIC);
}
