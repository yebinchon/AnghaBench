
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {struct mlx5e_tx_wqe_info* wqe_info; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_txqsq {int uar_map; int pc; int sqn; TYPE_1__ db; int cc; int txq; int state; struct mlx5_wq_cyc wq; struct mlx5e_channel* channel; } ;
struct mlx5e_tx_wqe_info {int num_wqebbs; } ;
struct mlx5e_tx_wqe {int ctrl; } ;
struct mlx5e_channel {int napi; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 int clear_bit (int ,int *) ;
 int memset (struct mlx5e_tx_wqe_info*,int ,int) ;
 size_t mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;
 int mlx5e_notify_hw (struct mlx5_wq_cyc*,int ,int ,int *) ;
 struct mlx5e_tx_wqe* mlx5e_post_nop (struct mlx5_wq_cyc*,int ,int *) ;
 int mlx5e_tx_disable_queue (int ) ;
 scalar_t__ mlx5e_wqc_has_room_for (struct mlx5_wq_cyc*,int ,int ,int) ;
 int napi_synchronize (int *) ;

__attribute__((used)) static void mlx5e_deactivate_txqsq(struct mlx5e_txqsq *sq)
{
 struct mlx5e_channel *c = sq->channel;
 struct mlx5_wq_cyc *wq = &sq->wq;

 clear_bit(MLX5E_SQ_STATE_ENABLED, &sq->state);

 napi_synchronize(&c->napi);

 mlx5e_tx_disable_queue(sq->txq);


 if (mlx5e_wqc_has_room_for(wq, sq->cc, sq->pc, 1)) {
  u16 pi = mlx5_wq_cyc_ctr2ix(wq, sq->pc);
  struct mlx5e_tx_wqe_info *wi;
  struct mlx5e_tx_wqe *nop;

  wi = &sq->db.wqe_info[pi];

  memset(wi, 0, sizeof(*wi));
  wi->num_wqebbs = 1;
  nop = mlx5e_post_nop(wq, sq->sqn, &sq->pc);
  mlx5e_notify_hw(wq, sq->pc, sq->uar_map, &nop->ctrl);
 }
}
