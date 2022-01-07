
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int page_pool; } ;
struct mlx5e_dma_info {int page; } ;


 scalar_t__ likely (int) ;
 int mlx5e_page_dma_unmap (struct mlx5e_rq*,struct mlx5e_dma_info*) ;
 scalar_t__ mlx5e_rx_cache_put (struct mlx5e_rq*,struct mlx5e_dma_info*) ;
 int page_pool_recycle_direct (int ,int ) ;
 int page_pool_release_page (int ,int ) ;
 int put_page (int ) ;

void mlx5e_page_release_dynamic(struct mlx5e_rq *rq,
    struct mlx5e_dma_info *dma_info,
    bool recycle)
{
 if (likely(recycle)) {
  if (mlx5e_rx_cache_put(rq, dma_info))
   return;

  mlx5e_page_dma_unmap(rq, dma_info);
  page_pool_recycle_direct(rq->page_pool, dma_info->page);
 } else {
  mlx5e_page_dma_unmap(rq, dma_info);
  page_pool_release_page(rq->page_pool, dma_info->page);
  put_page(dma_info->page);
 }
}
