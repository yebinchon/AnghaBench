
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ rss_hash_result; scalar_t__ rss_hash_type; } ;
struct mlx5e_cq_decomp {TYPE_1__ title; } ;
struct mlx5e_rq {struct mlx5e_cq_decomp cqd; } ;
struct mlx5_cqwq {int dummy; } ;


 int mlx5e_decompress_cqe (struct mlx5e_rq*,struct mlx5_cqwq*,int ) ;

__attribute__((used)) static inline void mlx5e_decompress_cqe_no_hash(struct mlx5e_rq *rq,
      struct mlx5_cqwq *wq,
      u32 cqcc)
{
 struct mlx5e_cq_decomp *cqd = &rq->cqd;

 mlx5e_decompress_cqe(rq, wq, cqcc);
 cqd->title.rss_hash_type = 0;
 cqd->title.rss_hash_result = 0;
}
