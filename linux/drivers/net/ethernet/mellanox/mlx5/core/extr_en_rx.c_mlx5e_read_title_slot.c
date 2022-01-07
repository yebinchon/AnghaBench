
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_cqe64 {int wqe_counter; int byte_cnt; } ;
struct mlx5e_cq_decomp {int wqe_counter; int left; struct mlx5_cqe64 title; } ;
struct mlx5e_rq {TYPE_1__* stats; struct mlx5e_cq_decomp cqd; } ;
struct mlx5_cqwq {int dummy; } ;
struct TYPE_2__ {int cqe_compress_blks; } ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int mlx5e_read_cqe_slot (struct mlx5_cqwq*,int ,struct mlx5_cqe64*) ;

__attribute__((used)) static inline void mlx5e_read_title_slot(struct mlx5e_rq *rq,
      struct mlx5_cqwq *wq,
      u32 cqcc)
{
 struct mlx5e_cq_decomp *cqd = &rq->cqd;
 struct mlx5_cqe64 *title = &cqd->title;

 mlx5e_read_cqe_slot(wq, cqcc, title);
 cqd->left = be32_to_cpu(title->byte_cnt);
 cqd->wqe_counter = be16_to_cpu(title->wqe_counter);
 rq->stats->cqe_compress_blks++;
}
