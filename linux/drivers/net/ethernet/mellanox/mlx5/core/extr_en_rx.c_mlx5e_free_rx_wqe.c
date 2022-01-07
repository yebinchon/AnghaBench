
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_wqe_frag_info {int dummy; } ;
struct TYPE_3__ {int num_frags; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct mlx5e_rq {TYPE_2__ wqe; } ;


 int mlx5e_put_rx_frag (struct mlx5e_rq*,struct mlx5e_wqe_frag_info*,int) ;

__attribute__((used)) static inline void mlx5e_free_rx_wqe(struct mlx5e_rq *rq,
         struct mlx5e_wqe_frag_info *wi,
         bool recycle)
{
 int i;

 for (i = 0; i < rq->wqe.info.num_frags; i++, wi++)
  mlx5e_put_rx_frag(rq, wi, recycle);
}
