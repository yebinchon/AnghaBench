
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5e_xsk_param {scalar_t__ headroom; } ;
struct mlx5e_params {int dummy; } ;


 scalar_t__ MLX5_RX_HEADROOM ;
 int NET_IP_ALIGN ;
 scalar_t__ XDP_PACKET_HEADROOM ;
 scalar_t__ mlx5e_rx_is_xdp (struct mlx5e_params*,struct mlx5e_xsk_param*) ;

u16 mlx5e_get_linear_rq_headroom(struct mlx5e_params *params,
     struct mlx5e_xsk_param *xsk)
{
 u16 headroom = NET_IP_ALIGN;

 if (mlx5e_rx_is_xdp(params, xsk)) {
  headroom += XDP_PACKET_HEADROOM;
  if (xsk)
   headroom += xsk->headroom;
 } else {
  headroom += MLX5_RX_HEADROOM;
 }

 return headroom;
}
