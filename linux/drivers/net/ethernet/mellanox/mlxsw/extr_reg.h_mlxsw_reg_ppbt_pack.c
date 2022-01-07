
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_pxbt_op { ____Placeholder_mlxsw_reg_pxbt_op } mlxsw_reg_pxbt_op ;
typedef enum mlxsw_reg_pxbt_e { ____Placeholder_mlxsw_reg_pxbt_e } mlxsw_reg_pxbt_e ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ppbt_acl_info_set (char*,int ) ;
 int mlxsw_reg_ppbt_e_set (char*,int) ;
 int mlxsw_reg_ppbt_g_set (char*,int) ;
 int mlxsw_reg_ppbt_local_port_set (char*,int ) ;
 int mlxsw_reg_ppbt_op_set (char*,int) ;
 int ppbt ;

__attribute__((used)) static inline void mlxsw_reg_ppbt_pack(char *payload, enum mlxsw_reg_pxbt_e e,
           enum mlxsw_reg_pxbt_op op,
           u8 local_port, u16 acl_info)
{
 MLXSW_REG_ZERO(ppbt, payload);
 mlxsw_reg_ppbt_e_set(payload, e);
 mlxsw_reg_ppbt_op_set(payload, op);
 mlxsw_reg_ppbt_local_port_set(payload, local_port);
 mlxsw_reg_ppbt_g_set(payload, 1);
 mlxsw_reg_ppbt_acl_info_set(payload, acl_info);
}
