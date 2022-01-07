
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5e_cq_decomp {int mini_arr_idx; int title; } ;
struct mlx5e_rq {int (* handle_rx_cqe ) (struct mlx5e_rq*,int *) ;struct mlx5e_cq_decomp cqd; } ;
struct mlx5_cqwq {scalar_t__ cc; } ;


 int mlx5e_decompress_cqe (struct mlx5e_rq*,struct mlx5_cqwq*,scalar_t__) ;
 scalar_t__ mlx5e_decompress_cqes_cont (struct mlx5e_rq*,struct mlx5_cqwq*,int,int) ;
 int mlx5e_read_mini_arr_slot (struct mlx5_cqwq*,struct mlx5e_cq_decomp*,scalar_t__) ;
 int mlx5e_read_title_slot (struct mlx5e_rq*,struct mlx5_cqwq*,scalar_t__) ;
 int stub1 (struct mlx5e_rq*,int *) ;

__attribute__((used)) static inline u32 mlx5e_decompress_cqes_start(struct mlx5e_rq *rq,
           struct mlx5_cqwq *wq,
           int budget_rem)
{
 struct mlx5e_cq_decomp *cqd = &rq->cqd;
 u32 cc = wq->cc;

 mlx5e_read_title_slot(rq, wq, cc);
 mlx5e_read_mini_arr_slot(wq, cqd, cc + 1);
 mlx5e_decompress_cqe(rq, wq, cc);
 rq->handle_rx_cqe(rq, &cqd->title);
 cqd->mini_arr_idx++;

 return mlx5e_decompress_cqes_cont(rq, wq, 1, budget_rem) - 1;
}
