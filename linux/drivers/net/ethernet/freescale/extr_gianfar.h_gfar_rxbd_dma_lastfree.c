
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxbd8 {int dummy; } ;
struct gfar_priv_rx_q {int next_to_use; int rx_ring_size; struct rxbd8* rx_bd_base; int rx_bd_dma_base; } ;


 int lower_32_bits (int ) ;

__attribute__((used)) static inline u32 gfar_rxbd_dma_lastfree(struct gfar_priv_rx_q *rxq)
{
 struct rxbd8 *bdp;
 u32 bdp_dma;
 int i;

 i = rxq->next_to_use ? rxq->next_to_use - 1 : rxq->rx_ring_size - 1;
 bdp = &rxq->rx_bd_base[i];
 bdp_dma = lower_32_bits(rxq->rx_bd_dma_base);
 bdp_dma += (uintptr_t)bdp - (uintptr_t)rxq->rx_bd_base;

 return bdp_dma;
}
