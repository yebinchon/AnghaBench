
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_reg_ptys_eth_pack (char*,int ,int ,int) ;

__attribute__((used)) static void
mlxsw_sp1_reg_ptys_eth_pack(struct mlxsw_sp *mlxsw_sp, char *payload,
       u8 local_port, u32 proto_admin, bool autoneg)
{
 mlxsw_reg_ptys_eth_pack(payload, local_port, proto_admin, autoneg);
}
