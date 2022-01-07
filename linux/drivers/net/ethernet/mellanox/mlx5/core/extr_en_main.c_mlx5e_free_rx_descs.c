
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int next_wqe_index; } ;
struct mlx5e_rx_wqe_ll {TYPE_2__ next; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_6__ {struct mlx5_wq_cyc wq; } ;
struct mlx5_wq_ll {int * tail_next; int head; } ;
struct TYPE_4__ {int umr_in_progress; struct mlx5_wq_ll wq; } ;
struct mlx5e_rq {scalar_t__ wq_type; int (* dealloc_wqe ) (struct mlx5e_rq*,int ) ;TYPE_3__ wqe; TYPE_1__ mpwqe; } ;
typedef int __be16 ;


 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ;
 int be16_to_cpu (int ) ;
 int mlx5_wq_cyc_get_tail (struct mlx5_wq_cyc*) ;
 int mlx5_wq_cyc_is_empty (struct mlx5_wq_cyc*) ;
 int mlx5_wq_cyc_pop (struct mlx5_wq_cyc*) ;
 struct mlx5e_rx_wqe_ll* mlx5_wq_ll_get_wqe (struct mlx5_wq_ll*,int ) ;
 int mlx5_wq_ll_get_wqe_next_ix (struct mlx5_wq_ll*,int ) ;
 int mlx5_wq_ll_is_empty (struct mlx5_wq_ll*) ;
 int mlx5_wq_ll_pop (struct mlx5_wq_ll*,int ,int *) ;
 int stub1 (struct mlx5e_rq*,int ) ;
 int stub2 (struct mlx5e_rq*,int ) ;
 int stub3 (struct mlx5e_rq*,int ) ;

void mlx5e_free_rx_descs(struct mlx5e_rq *rq)
{
 __be16 wqe_ix_be;
 u16 wqe_ix;

 if (rq->wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ) {
  struct mlx5_wq_ll *wq = &rq->mpwqe.wq;
  u16 head = wq->head;
  int i;


  for (i = 0; i < rq->mpwqe.umr_in_progress; i++) {
   rq->dealloc_wqe(rq, head);
   head = mlx5_wq_ll_get_wqe_next_ix(wq, head);
  }

  while (!mlx5_wq_ll_is_empty(wq)) {
   struct mlx5e_rx_wqe_ll *wqe;

   wqe_ix_be = *wq->tail_next;
   wqe_ix = be16_to_cpu(wqe_ix_be);
   wqe = mlx5_wq_ll_get_wqe(wq, wqe_ix);
   rq->dealloc_wqe(rq, wqe_ix);
   mlx5_wq_ll_pop(wq, wqe_ix_be,
           &wqe->next.next_wqe_index);
  }
 } else {
  struct mlx5_wq_cyc *wq = &rq->wqe.wq;

  while (!mlx5_wq_cyc_is_empty(wq)) {
   wqe_ix = mlx5_wq_cyc_get_tail(wq);
   rq->dealloc_wqe(rq, wqe_ix);
   mlx5_wq_cyc_pop(wq);
  }
 }

}
