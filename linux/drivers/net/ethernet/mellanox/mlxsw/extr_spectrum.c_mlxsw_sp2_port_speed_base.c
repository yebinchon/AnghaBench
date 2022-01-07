
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp {int core; } ;


 int EIO ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_EXT_ETH_SPEED_25GAUI_1_25GBASE_CR_KR ;
 int MLXSW_REG_PTYS_EXT_ETH_SPEED_50GAUI_1_LAUI_1_50GBASE_CR_KR ;
 int MLXSW_REG_PTYS_LEN ;
 int MLXSW_SP_PORT_BASE_SPEED_25G ;
 int MLXSW_SP_PORT_BASE_SPEED_50G ;
 int mlxsw_reg_ptys_ext_eth_pack (char*,int ,int ,int) ;
 int mlxsw_reg_ptys_ext_eth_unpack (char*,int*,int *,int *) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int ptys ;

__attribute__((used)) static int
mlxsw_sp2_port_speed_base(struct mlxsw_sp *mlxsw_sp, u8 local_port,
     u32 *base_speed)
{
 char ptys_pl[MLXSW_REG_PTYS_LEN];
 u32 eth_proto_cap;
 int err;




 mlxsw_reg_ptys_ext_eth_pack(ptys_pl, local_port, 0, 0);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ptys), ptys_pl);
 if (err)
  return err;
 mlxsw_reg_ptys_ext_eth_unpack(ptys_pl, &eth_proto_cap, ((void*)0), ((void*)0));

 if (eth_proto_cap &
     MLXSW_REG_PTYS_EXT_ETH_SPEED_50GAUI_1_LAUI_1_50GBASE_CR_KR) {
  *base_speed = MLXSW_SP_PORT_BASE_SPEED_50G;
  return 0;
 }

 if (eth_proto_cap &
     MLXSW_REG_PTYS_EXT_ETH_SPEED_25GAUI_1_25GBASE_CR_KR) {
  *base_speed = MLXSW_SP_PORT_BASE_SPEED_25G;
  return 0;
 }

 return -EIO;
}
