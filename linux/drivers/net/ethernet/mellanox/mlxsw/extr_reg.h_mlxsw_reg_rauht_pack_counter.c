
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES ;
 int mlxsw_reg_rauht_counter_index_set (char*,int ) ;
 int mlxsw_reg_rauht_counter_set_type_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_rauht_pack_counter(char *payload,
      u64 counter_index)
{
 mlxsw_reg_rauht_counter_index_set(payload, counter_index);
 mlxsw_reg_rauht_counter_set_type_set(payload,
          MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES);
}
