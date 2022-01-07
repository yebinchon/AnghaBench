
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map_dir; } ;
struct mlx5e_rq {int page_pool; int pdev; TYPE_1__ buff; } ;
struct mlx5e_dma_info {int * page; int addr; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int dma_map_page (int ,int *,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ mlx5e_rx_cache_get (struct mlx5e_rq*,struct mlx5e_dma_info*) ;
 int * page_pool_dev_alloc_pages (int ) ;
 int page_pool_recycle_direct (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int mlx5e_page_alloc_pool(struct mlx5e_rq *rq,
     struct mlx5e_dma_info *dma_info)
{
 if (mlx5e_rx_cache_get(rq, dma_info))
  return 0;

 dma_info->page = page_pool_dev_alloc_pages(rq->page_pool);
 if (unlikely(!dma_info->page))
  return -ENOMEM;

 dma_info->addr = dma_map_page(rq->pdev, dma_info->page, 0,
          PAGE_SIZE, rq->buff.map_dir);
 if (unlikely(dma_mapping_error(rq->pdev, dma_info->addr))) {
  page_pool_recycle_direct(rq->page_pool, dma_info->page);
  dma_info->page = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
