
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_raltb_protocol_set (char*,int) ;
 int mlxsw_reg_raltb_tree_id_set (char*,int ) ;
 int mlxsw_reg_raltb_virtual_router_set (char*,int ) ;
 int raltb ;

__attribute__((used)) static inline void mlxsw_reg_raltb_pack(char *payload, u16 virtual_router,
     enum mlxsw_reg_ralxx_protocol protocol,
     u8 tree_id)
{
 MLXSW_REG_ZERO(raltb, payload);
 mlxsw_reg_raltb_virtual_router_set(payload, virtual_router);
 mlxsw_reg_raltb_protocol_set(payload, protocol);
 mlxsw_reg_raltb_tree_id_set(payload, tree_id);
}
