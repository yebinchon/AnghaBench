
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ wqe_bulk; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_5__ {TYPE_3__ info; struct mlx5_wq_cyc wq; } ;
struct mlx5e_rq {TYPE_1__* stats; TYPE_2__ wqe; int state; } ;
struct TYPE_4__ {int buff_alloc_err; } ;


 int MLX5E_RQ_STATE_ENABLED ;
 int dma_wmb () ;
 int mlx5_wq_cyc_get_head (struct mlx5_wq_cyc*) ;
 scalar_t__ mlx5_wq_cyc_missing (struct mlx5_wq_cyc*) ;
 int mlx5_wq_cyc_push_n (struct mlx5_wq_cyc*,scalar_t__) ;
 int mlx5_wq_cyc_update_db_record (struct mlx5_wq_cyc*) ;
 int mlx5e_alloc_rx_wqes (struct mlx5e_rq*,int ,scalar_t__) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

bool mlx5e_post_rx_wqes(struct mlx5e_rq *rq)
{
 struct mlx5_wq_cyc *wq = &rq->wqe.wq;
 u8 wqe_bulk;
 int err;

 if (unlikely(!test_bit(MLX5E_RQ_STATE_ENABLED, &rq->state)))
  return 0;

 wqe_bulk = rq->wqe.info.wqe_bulk;

 if (mlx5_wq_cyc_missing(wq) < wqe_bulk)
  return 0;

 do {
  u16 head = mlx5_wq_cyc_get_head(wq);

  err = mlx5e_alloc_rx_wqes(rq, head, wqe_bulk);
  if (unlikely(err)) {
   rq->stats->buff_alloc_err++;
   break;
  }

  mlx5_wq_cyc_push_n(wq, wqe_bulk);
 } while (mlx5_wq_cyc_missing(wq) >= wqe_bulk);


 dma_wmb();

 mlx5_wq_cyc_update_db_record(wq);

 return !!err;
}
