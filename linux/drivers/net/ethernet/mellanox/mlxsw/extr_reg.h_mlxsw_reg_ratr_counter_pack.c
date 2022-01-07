
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum mlxsw_reg_flow_counter_set_type { ____Placeholder_mlxsw_reg_flow_counter_set_type } mlxsw_reg_flow_counter_set_type ;


 int MLXSW_REG_FLOW_COUNTER_SET_TYPE_NO_COUNT ;
 int MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES ;
 int mlxsw_reg_ratr_counter_index_set (char*,int ) ;
 int mlxsw_reg_ratr_counter_set_type_set (char*,int) ;

__attribute__((used)) static inline void mlxsw_reg_ratr_counter_pack(char *payload, u64 counter_index,
            bool counter_enable)
{
 enum mlxsw_reg_flow_counter_set_type set_type;

 if (counter_enable)
  set_type = MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES;
 else
  set_type = MLXSW_REG_FLOW_COUNTER_SET_TYPE_NO_COUNT;

 mlxsw_reg_ratr_counter_index_set(payload, counter_index);
 mlxsw_reg_ratr_counter_set_type_set(payload, set_type);
}
