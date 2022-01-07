
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mtpppc_egr_timestamp_message_type_set (char*,int ) ;
 int mlxsw_reg_mtpppc_ing_timestamp_message_type_set (char*,int ) ;
 int mtpppc ;

__attribute__((used)) static inline void mlxsw_reg_mtpppc_pack(char *payload, u16 ing, u16 egr)
{
 MLXSW_REG_ZERO(mtpppc, payload);
 mlxsw_reg_mtpppc_ing_timestamp_message_type_set(payload, ing);
 mlxsw_reg_mtpppc_egr_timestamp_message_type_set(payload, egr);
}
