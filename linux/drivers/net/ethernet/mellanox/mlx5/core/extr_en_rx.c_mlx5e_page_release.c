
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {scalar_t__ umem; } ;
struct mlx5e_dma_info {int dummy; } ;


 int mlx5e_page_release_dynamic (struct mlx5e_rq*,struct mlx5e_dma_info*,int) ;
 int mlx5e_xsk_page_release (struct mlx5e_rq*,struct mlx5e_dma_info*) ;

__attribute__((used)) static inline void mlx5e_page_release(struct mlx5e_rq *rq,
          struct mlx5e_dma_info *dma_info,
          bool recycle)
{
 if (rq->umem)




  mlx5e_xsk_page_release(rq, dma_info);
 else
  mlx5e_page_release_dynamic(rq, dma_info, recycle);
}
