
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ralta_op_set (char*,int) ;
 int mlxsw_reg_ralta_protocol_set (char*,int) ;
 int mlxsw_reg_ralta_tree_id_set (char*,int ) ;
 int ralta ;

__attribute__((used)) static inline void mlxsw_reg_ralta_pack(char *payload, bool alloc,
     enum mlxsw_reg_ralxx_protocol protocol,
     u8 tree_id)
{
 MLXSW_REG_ZERO(ralta, payload);
 mlxsw_reg_ralta_op_set(payload, !alloc);
 mlxsw_reg_ralta_protocol_set(payload, protocol);
 mlxsw_reg_ralta_tree_id_set(payload, tree_id);
}
