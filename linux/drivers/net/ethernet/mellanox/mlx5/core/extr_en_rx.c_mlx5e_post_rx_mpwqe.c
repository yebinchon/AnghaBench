
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct mlx5_wq_ll {int head; } ;
struct TYPE_2__ {struct mlx5_wq_ll wq; } ;
struct mlx5e_rq {TYPE_1__ mpwqe; } ;


 int dma_wmb () ;
 int mlx5_wq_ll_get_wqe_next_ix (struct mlx5_wq_ll*,int ) ;
 int mlx5_wq_ll_push (struct mlx5_wq_ll*,int ) ;
 int mlx5_wq_ll_update_db_record (struct mlx5_wq_ll*) ;

__attribute__((used)) static void mlx5e_post_rx_mpwqe(struct mlx5e_rq *rq, u8 n)
{
 struct mlx5_wq_ll *wq = &rq->mpwqe.wq;

 do {
  u16 next_wqe_index = mlx5_wq_ll_get_wqe_next_ix(wq, wq->head);

  mlx5_wq_ll_push(wq, next_wqe_index);
 } while (--n);


 dma_wmb();

 mlx5_wq_ll_update_db_record(wq);
}
