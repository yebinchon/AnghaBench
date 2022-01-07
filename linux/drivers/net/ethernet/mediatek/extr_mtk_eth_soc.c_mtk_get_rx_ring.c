
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_rx_ring {int calc_idx_update; TYPE_1__* dma; int dma_size; int calc_idx; } ;
struct mtk_eth {struct mtk_rx_ring* rx_ring; int hwlro; } ;
struct TYPE_2__ {int rxd2; } ;


 int MTK_MAX_RX_RING_NUM ;
 int NEXT_DESP_IDX (int ,int ) ;
 int RX_DMA_DONE ;

__attribute__((used)) static struct mtk_rx_ring *mtk_get_rx_ring(struct mtk_eth *eth)
{
 int i;
 struct mtk_rx_ring *ring;
 int idx;

 if (!eth->hwlro)
  return &eth->rx_ring[0];

 for (i = 0; i < MTK_MAX_RX_RING_NUM; i++) {
  ring = &eth->rx_ring[i];
  idx = NEXT_DESP_IDX(ring->calc_idx, ring->dma_size);
  if (ring->dma[idx].rxd2 & RX_DMA_DONE) {
   ring->calc_idx_update = 1;
   return ring;
  }
 }

 return ((void*)0);
}
