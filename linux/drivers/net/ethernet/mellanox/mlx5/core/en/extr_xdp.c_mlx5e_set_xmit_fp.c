
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xdpsq {int xmit_xdp_frame; int xmit_xdp_frame_check; } ;


 int mlx5e_xmit_xdp_frame ;
 int mlx5e_xmit_xdp_frame_check ;
 int mlx5e_xmit_xdp_frame_check_mpwqe ;
 int mlx5e_xmit_xdp_frame_mpwqe ;

void mlx5e_set_xmit_fp(struct mlx5e_xdpsq *sq, bool is_mpw)
{
 sq->xmit_xdp_frame_check = is_mpw ?
  mlx5e_xmit_xdp_frame_check_mpwqe : mlx5e_xmit_xdp_frame_check;
 sq->xmit_xdp_frame = is_mpw ?
  mlx5e_xmit_xdp_frame_mpwqe : mlx5e_xmit_xdp_frame;
}
