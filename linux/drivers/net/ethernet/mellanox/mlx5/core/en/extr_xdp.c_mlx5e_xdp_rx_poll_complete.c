
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wqe; } ;
struct mlx5e_xdpsq {TYPE_1__ mpwqe; } ;
struct mlx5e_rq {int flags; struct mlx5e_xdpsq* xdpsq; } ;


 int MLX5E_RQ_FLAG_XDP_REDIRECT ;
 int __clear_bit (int ,int ) ;
 int mlx5e_xdp_mpwqe_complete (struct mlx5e_xdpsq*) ;
 int mlx5e_xmit_xdp_doorbell (struct mlx5e_xdpsq*) ;
 scalar_t__ test_bit (int ,int ) ;
 int xdp_do_flush_map () ;

void mlx5e_xdp_rx_poll_complete(struct mlx5e_rq *rq)
{
 struct mlx5e_xdpsq *xdpsq = rq->xdpsq;

 if (xdpsq->mpwqe.wqe)
  mlx5e_xdp_mpwqe_complete(xdpsq);

 mlx5e_xmit_xdp_doorbell(xdpsq);

 if (test_bit(MLX5E_RQ_FLAG_XDP_REDIRECT, rq->flags)) {
  xdp_do_flush_map();
  __clear_bit(MLX5E_RQ_FLAG_XDP_REDIRECT, rq->flags);
 }
}
