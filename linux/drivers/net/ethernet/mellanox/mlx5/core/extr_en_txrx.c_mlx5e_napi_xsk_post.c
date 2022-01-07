
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xdpsq {int dummy; } ;
struct mlx5e_rq {int (* post_wqes ) (struct mlx5e_rq*) ;} ;


 int MLX5E_TX_XSK_POLL_BUDGET ;
 int mlx5e_xsk_tx (struct mlx5e_xdpsq*,int ) ;
 int mlx5e_xsk_update_rx_wakeup (struct mlx5e_rq*,int) ;
 int mlx5e_xsk_update_tx_wakeup (struct mlx5e_xdpsq*) ;
 int stub1 (struct mlx5e_rq*) ;

__attribute__((used)) static bool mlx5e_napi_xsk_post(struct mlx5e_xdpsq *xsksq, struct mlx5e_rq *xskrq)
{
 bool busy_xsk = 0, xsk_rx_alloc_err;
 mlx5e_xsk_update_tx_wakeup(xsksq);
 busy_xsk |= mlx5e_xsk_tx(xsksq, MLX5E_TX_XSK_POLL_BUDGET);
 mlx5e_xsk_update_tx_wakeup(xsksq);

 xsk_rx_alloc_err = xskrq->post_wqes(xskrq);
 busy_xsk |= mlx5e_xsk_update_rx_wakeup(xskrq, xsk_rx_alloc_err);

 return busy_xsk;
}
