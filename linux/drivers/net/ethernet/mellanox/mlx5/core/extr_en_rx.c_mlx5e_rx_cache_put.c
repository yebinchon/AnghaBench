
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_rq_stats {int cache_waive; int cache_full; } ;
struct mlx5e_page_cache {int tail; int head; struct mlx5e_dma_info* page_cache; } ;
struct mlx5e_rq {struct mlx5e_rq_stats* stats; struct mlx5e_page_cache page_cache; } ;
struct mlx5e_dma_info {int page; } ;


 int MLX5E_CACHE_SIZE ;
 int mlx5e_page_is_reserved (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline bool mlx5e_rx_cache_put(struct mlx5e_rq *rq,
          struct mlx5e_dma_info *dma_info)
{
 struct mlx5e_page_cache *cache = &rq->page_cache;
 u32 tail_next = (cache->tail + 1) & (MLX5E_CACHE_SIZE - 1);
 struct mlx5e_rq_stats *stats = rq->stats;

 if (tail_next == cache->head) {
  stats->cache_full++;
  return 0;
 }

 if (unlikely(mlx5e_page_is_reserved(dma_info->page))) {
  stats->cache_waive++;
  return 0;
 }

 cache->page_cache[cache->tail] = *dma_info;
 cache->tail = tail_next;
 return 1;
}
