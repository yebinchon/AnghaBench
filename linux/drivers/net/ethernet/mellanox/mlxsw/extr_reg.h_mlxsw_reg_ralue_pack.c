
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;


 int MLXSW_REG_RALUE_ENTRY_TYPE_ROUTE_ENTRY ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ralue_bmp_len_set (char*,int ) ;
 int mlxsw_reg_ralue_entry_type_set (char*,int ) ;
 int mlxsw_reg_ralue_op_set (char*,int) ;
 int mlxsw_reg_ralue_prefix_len_set (char*,int ) ;
 int mlxsw_reg_ralue_protocol_set (char*,int) ;
 int mlxsw_reg_ralue_virtual_router_set (char*,int ) ;
 int ralue ;

__attribute__((used)) static inline void mlxsw_reg_ralue_pack(char *payload,
     enum mlxsw_reg_ralxx_protocol protocol,
     enum mlxsw_reg_ralue_op op,
     u16 virtual_router, u8 prefix_len)
{
 MLXSW_REG_ZERO(ralue, payload);
 mlxsw_reg_ralue_protocol_set(payload, protocol);
 mlxsw_reg_ralue_op_set(payload, op);
 mlxsw_reg_ralue_virtual_router_set(payload, virtual_router);
 mlxsw_reg_ralue_prefix_len_set(payload, prefix_len);
 mlxsw_reg_ralue_entry_type_set(payload,
           MLXSW_REG_RALUE_ENTRY_TYPE_ROUTE_ENTRY);
 mlxsw_reg_ralue_bmp_len_set(payload, prefix_len);
}
