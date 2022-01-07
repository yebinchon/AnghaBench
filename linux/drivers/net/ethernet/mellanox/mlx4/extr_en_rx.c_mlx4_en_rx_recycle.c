
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_page_cache {size_t index; TYPE_1__* buf; } ;
struct mlx4_en_rx_ring {struct mlx4_en_page_cache page_cache; } ;
struct mlx4_en_rx_alloc {int dma; int page; } ;
struct TYPE_2__ {int dma; int page; } ;


 size_t MLX4_EN_CACHE_SIZE ;

bool mlx4_en_rx_recycle(struct mlx4_en_rx_ring *ring,
   struct mlx4_en_rx_alloc *frame)
{
 struct mlx4_en_page_cache *cache = &ring->page_cache;

 if (cache->index >= MLX4_EN_CACHE_SIZE)
  return 0;

 cache->buf[cache->index].page = frame->page;
 cache->buf[cache->index].dma = frame->dma;
 cache->index++;
 return 1;
}
