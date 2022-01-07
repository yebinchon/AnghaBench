
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int xdpi_fifo; struct mlx5e_xdp_wqe_info* wqe_info; } ;
struct mlx5e_xdpsq {int * doorbell_cseg; TYPE_1__ db; int pc; int sqn; int wq; } ;
struct mlx5e_xdp_wqe_info {int num_wqebbs; int num_pkts; } ;
struct mlx5e_xdp_info {int dummy; } ;
struct mlx5e_tx_wqe {int ctrl; } ;


 size_t mlx5_wq_cyc_ctr2ix (int *,int ) ;
 struct mlx5e_tx_wqe* mlx5e_post_nop (int *,int ,int *) ;
 int mlx5e_xdpi_fifo_push (int *,struct mlx5e_xdp_info*) ;

__attribute__((used)) static void mlx5e_xsk_tx_post_err(struct mlx5e_xdpsq *sq,
      struct mlx5e_xdp_info *xdpi)
{
 u16 pi = mlx5_wq_cyc_ctr2ix(&sq->wq, sq->pc);
 struct mlx5e_xdp_wqe_info *wi = &sq->db.wqe_info[pi];
 struct mlx5e_tx_wqe *nopwqe;

 wi->num_wqebbs = 1;
 wi->num_pkts = 1;

 nopwqe = mlx5e_post_nop(&sq->wq, sq->sqn, &sq->pc);
 mlx5e_xdpi_fifo_push(&sq->db.xdpi_fifo, xdpi);
 sq->doorbell_cseg = &nopwqe->ctrl;
}
