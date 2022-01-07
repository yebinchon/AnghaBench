
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_ptys_reg {int eth_proto_cap; int eth_proto_oper; } ;


 int MLX4_1000BASE_CX_SGMII ;
 int MLX4_1000BASE_KX ;
 int MLX4_1000BASE_T ;
 int MLX4_100BASE_TX ;
 int MLX4_10GBASE_CR ;
 int MLX4_10GBASE_KR ;
 int MLX4_10GBASE_KX4 ;
 int MLX4_10GBASE_SR ;
 int MLX4_10GBASE_T ;
 int MLX4_20GBASE_KR2 ;
 int MLX4_40GBASE_CR4 ;
 int MLX4_40GBASE_KR4 ;
 int MLX4_40GBASE_SR4 ;
 int MLX4_56GBASE_CR4 ;
 int MLX4_56GBASE_KR4 ;
 int MLX4_56GBASE_SR4 ;
 int MLX4_PROT_MASK (int ) ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 int PORT_OTHER ;
 int PORT_TP ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 ptys_get_active_port(struct mlx4_ptys_reg *ptys_reg)
{
 u32 eth_proto = be32_to_cpu(ptys_reg->eth_proto_oper);

 if (!eth_proto)
  eth_proto = be32_to_cpu(ptys_reg->eth_proto_cap);

 if (eth_proto & (MLX4_PROT_MASK(MLX4_10GBASE_T)
    | MLX4_PROT_MASK(MLX4_1000BASE_T)
    | MLX4_PROT_MASK(MLX4_100BASE_TX))) {
   return PORT_TP;
 }

 if (eth_proto & (MLX4_PROT_MASK(MLX4_10GBASE_SR)
    | MLX4_PROT_MASK(MLX4_56GBASE_SR4)
    | MLX4_PROT_MASK(MLX4_40GBASE_SR4)
    | MLX4_PROT_MASK(MLX4_1000BASE_CX_SGMII))) {
   return PORT_FIBRE;
 }

 if (eth_proto & (MLX4_PROT_MASK(MLX4_10GBASE_CR)
    | MLX4_PROT_MASK(MLX4_56GBASE_CR4)
    | MLX4_PROT_MASK(MLX4_40GBASE_CR4))) {
   return PORT_DA;
 }

 if (eth_proto & (MLX4_PROT_MASK(MLX4_56GBASE_KR4)
    | MLX4_PROT_MASK(MLX4_40GBASE_KR4)
    | MLX4_PROT_MASK(MLX4_20GBASE_KR2)
    | MLX4_PROT_MASK(MLX4_10GBASE_KR)
    | MLX4_PROT_MASK(MLX4_10GBASE_KX4)
    | MLX4_PROT_MASK(MLX4_1000BASE_KX))) {
   return PORT_NONE;
 }
 return PORT_OTHER;
}
