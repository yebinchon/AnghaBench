
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 int MLX5E_1000BASE_CX_SGMII ;
 int MLX5E_100GBASE_CR4 ;
 int MLX5E_100GBASE_KR4 ;
 int MLX5E_100GBASE_SR4 ;
 int MLX5E_10GBASE_CR ;
 int MLX5E_10GBASE_KR ;
 int MLX5E_10GBASE_KX4 ;
 int MLX5E_10GBASE_SR ;
 int MLX5E_40GBASE_CR4 ;
 int MLX5E_40GBASE_KR4 ;
 int MLX5E_40GBASE_SR4 ;
 size_t MLX5E_CONNECTOR_TYPE_NUMBER ;
 int MLX5E_PROT_MASK (int ) ;
 size_t PORT_DA ;
 size_t PORT_FIBRE ;
 size_t PORT_NONE ;
 size_t PORT_OTHER ;
 size_t* ptys2connector_type ;

__attribute__((used)) static u8 get_connector_port(u32 eth_proto, u8 connector_type)
{
 if (connector_type && connector_type < MLX5E_CONNECTOR_TYPE_NUMBER)
  return ptys2connector_type[connector_type];

 if (eth_proto &
     (MLX5E_PROT_MASK(MLX5E_10GBASE_SR) |
      MLX5E_PROT_MASK(MLX5E_40GBASE_SR4) |
      MLX5E_PROT_MASK(MLX5E_100GBASE_SR4) |
      MLX5E_PROT_MASK(MLX5E_1000BASE_CX_SGMII))) {
  return PORT_FIBRE;
 }

 if (eth_proto &
     (MLX5E_PROT_MASK(MLX5E_40GBASE_CR4) |
      MLX5E_PROT_MASK(MLX5E_10GBASE_CR) |
      MLX5E_PROT_MASK(MLX5E_100GBASE_CR4))) {
  return PORT_DA;
 }

 if (eth_proto &
     (MLX5E_PROT_MASK(MLX5E_10GBASE_KX4) |
      MLX5E_PROT_MASK(MLX5E_10GBASE_KR) |
      MLX5E_PROT_MASK(MLX5E_40GBASE_KR4) |
      MLX5E_PROT_MASK(MLX5E_100GBASE_KR4))) {
  return PORT_NONE;
 }

 return PORT_OTHER;
}
