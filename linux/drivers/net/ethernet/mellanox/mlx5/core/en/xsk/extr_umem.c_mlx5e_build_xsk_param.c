
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {scalar_t__ headroom; scalar_t__ chunk_size_nohr; } ;
struct mlx5e_xsk_param {scalar_t__ chunk_size; scalar_t__ headroom; } ;



void mlx5e_build_xsk_param(struct xdp_umem *umem, struct mlx5e_xsk_param *xsk)
{
 xsk->headroom = umem->headroom;
 xsk->chunk_size = umem->chunk_size_nohr + umem->headroom;
}
