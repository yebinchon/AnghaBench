
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct enetc_rx_swbd {int page_offset; int dma; } ;
struct enetc_bdr {int dev; struct enetc_rx_swbd* rx_swbd; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct enetc_rx_swbd *enetc_get_rx_buff(struct enetc_bdr *rx_ring,
            int i, u16 size)
{
 struct enetc_rx_swbd *rx_swbd = &rx_ring->rx_swbd[i];

 dma_sync_single_range_for_cpu(rx_ring->dev, rx_swbd->dma,
          rx_swbd->page_offset,
          size, DMA_FROM_DEVICE);
 return rx_swbd;
}
