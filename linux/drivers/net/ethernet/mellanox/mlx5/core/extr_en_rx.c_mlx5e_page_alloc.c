
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {scalar_t__ umem; } ;
struct mlx5e_dma_info {int dummy; } ;


 int mlx5e_page_alloc_pool (struct mlx5e_rq*,struct mlx5e_dma_info*) ;
 int mlx5e_xsk_page_alloc_umem (struct mlx5e_rq*,struct mlx5e_dma_info*) ;

__attribute__((used)) static inline int mlx5e_page_alloc(struct mlx5e_rq *rq,
       struct mlx5e_dma_info *dma_info)
{
 if (rq->umem)
  return mlx5e_xsk_page_alloc_umem(rq, dma_info);
 else
  return mlx5e_page_alloc_pool(rq, dma_info);
}
