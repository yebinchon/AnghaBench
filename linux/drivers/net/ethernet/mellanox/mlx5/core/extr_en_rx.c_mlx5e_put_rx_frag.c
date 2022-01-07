
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_wqe_frag_info {int di; scalar_t__ last_in_page; } ;
struct mlx5e_rq {int dummy; } ;


 int mlx5e_page_release (struct mlx5e_rq*,int ,int) ;

__attribute__((used)) static inline void mlx5e_put_rx_frag(struct mlx5e_rq *rq,
         struct mlx5e_wqe_frag_info *frag,
         bool recycle)
{
 if (frag->last_in_page)
  mlx5e_page_release(rq, frag->di, recycle);
}
