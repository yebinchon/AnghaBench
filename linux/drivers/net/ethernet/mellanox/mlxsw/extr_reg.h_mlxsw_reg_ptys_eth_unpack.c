
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mlxsw_reg_ptys_eth_proto_admin_get (char*) ;
 int mlxsw_reg_ptys_eth_proto_cap_get (char*) ;
 int mlxsw_reg_ptys_eth_proto_oper_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_ptys_eth_unpack(char *payload,
          u32 *p_eth_proto_cap,
          u32 *p_eth_proto_admin,
          u32 *p_eth_proto_oper)
{
 if (p_eth_proto_cap)
  *p_eth_proto_cap =
   mlxsw_reg_ptys_eth_proto_cap_get(payload);
 if (p_eth_proto_admin)
  *p_eth_proto_admin =
   mlxsw_reg_ptys_eth_proto_admin_get(payload);
 if (p_eth_proto_oper)
  *p_eth_proto_oper =
   mlxsw_reg_ptys_eth_proto_oper_get(payload);
}
