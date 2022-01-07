
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_BYTE_OFF (int ,int ) ;
 int MLX5_GET (int ,void*,int ) ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int direction_sx ;
 int ipv6 ;
 int memcpy (int ,void*,int ) ;
 int src_port ;
 int tls_cmd ;
 int tls_flow ;

__attribute__((used)) static void mlx5_fpga_tls_flow_to_cmd(void *flow, void *cmd)
{
 memcpy(MLX5_ADDR_OF(tls_cmd, cmd, src_port), flow,
        MLX5_BYTE_OFF(tls_flow, ipv6));

 MLX5_SET(tls_cmd, cmd, ipv6, MLX5_GET(tls_flow, flow, ipv6));
 MLX5_SET(tls_cmd, cmd, direction_sx,
   MLX5_GET(tls_flow, flow, direction_sx));
}
