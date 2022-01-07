
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLXSW_REG_PTYS_ETH_SPEED_100GBASE_CR4 ;
 int MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4 ;
 int MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4 ;
 int MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR ;
 int MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR ;
 int MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4 ;
 int MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR ;
 int MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4 ;
 int MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4 ;
 int MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4 ;
 int MLXSW_REG_PTYS_ETH_SPEED_SGMII ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 int PORT_OTHER ;

__attribute__((used)) static u8 mlxsw_sx_port_connector_port(u32 ptys_eth_proto)
{
 if (ptys_eth_proto & (MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR |
         MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4 |
         MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4 |
         MLXSW_REG_PTYS_ETH_SPEED_SGMII))
  return PORT_FIBRE;

 if (ptys_eth_proto & (MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR |
         MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4 |
         MLXSW_REG_PTYS_ETH_SPEED_100GBASE_CR4))
  return PORT_DA;

 if (ptys_eth_proto & (MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR |
         MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4 |
         MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4 |
         MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4))
  return PORT_NONE;

 return PORT_OTHER;
}
