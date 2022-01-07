
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_reg_ptys_ext_eth_unpack (char*,int *,int *,int *) ;

__attribute__((used)) static void
mlxsw_sp2_reg_ptys_eth_unpack(struct mlxsw_sp *mlxsw_sp, char *payload,
         u32 *p_eth_proto_cap, u32 *p_eth_proto_admin,
         u32 *p_eth_proto_oper)
{
 mlxsw_reg_ptys_ext_eth_unpack(payload, p_eth_proto_cap,
          p_eth_proto_admin, p_eth_proto_oper);
}
