
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq_stats {int cache_reuse; int cache_busy; int cache_empty; } ;
struct mlx5e_page_cache {size_t head; size_t tail; struct mlx5e_dma_info* page_cache; } ;
struct mlx5e_rq {int pdev; struct mlx5e_rq_stats* stats; struct mlx5e_page_cache page_cache; } ;
struct mlx5e_dma_info {int addr; int page; } ;


 int DMA_FROM_DEVICE ;
 int MLX5E_CACHE_SIZE ;
 int PAGE_SIZE ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int page_ref_count (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool mlx5e_rx_cache_get(struct mlx5e_rq *rq,
          struct mlx5e_dma_info *dma_info)
{
 struct mlx5e_page_cache *cache = &rq->page_cache;
 struct mlx5e_rq_stats *stats = rq->stats;

 if (unlikely(cache->head == cache->tail)) {
  stats->cache_empty++;
  return 0;
 }

 if (page_ref_count(cache->page_cache[cache->head].page) != 1) {
  stats->cache_busy++;
  return 0;
 }

 *dma_info = cache->page_cache[cache->head];
 cache->head = (cache->head + 1) & (MLX5E_CACHE_SIZE - 1);
 stats->cache_reuse++;

 dma_sync_single_for_device(rq->pdev, dma_info->addr,
       PAGE_SIZE,
       DMA_FROM_DEVICE);
 return 1;
}
