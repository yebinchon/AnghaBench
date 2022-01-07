
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_rx_data {int mapping; struct page* data; scalar_t__ page_offset; } ;
struct qede_rx_queue {int filled_buffers; size_t sw_rx_prod; scalar_t__ rx_headroom; int rx_bd_ring; struct sw_rx_data* sw_rx_ring; int dev; int data_direction; } ;
struct page {int dummy; } ;
struct TYPE_2__ {void* lo; void* hi; } ;
struct eth_rx_bd {TYPE_1__ addr; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 size_t NUM_RX_BDS_MAX ;
 int PAGE_SIZE ;
 int WARN_ON (int) ;
 int __free_page (struct page*) ;
 struct page* alloc_pages (int ,int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ lower_32_bits (int ) ;
 scalar_t__ qed_chain_produce (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ upper_32_bits (int ) ;

int qede_alloc_rx_buffer(struct qede_rx_queue *rxq, bool allow_lazy)
{
 struct sw_rx_data *sw_rx_data;
 struct eth_rx_bd *rx_bd;
 dma_addr_t mapping;
 struct page *data;





 if (allow_lazy && likely(rxq->filled_buffers > 12)) {
  rxq->filled_buffers--;
  return 0;
 }

 data = alloc_pages(GFP_ATOMIC, 0);
 if (unlikely(!data))
  return -ENOMEM;




 mapping = dma_map_page(rxq->dev, data, 0,
          PAGE_SIZE, rxq->data_direction);
 if (unlikely(dma_mapping_error(rxq->dev, mapping))) {
  __free_page(data);
  return -ENOMEM;
 }

 sw_rx_data = &rxq->sw_rx_ring[rxq->sw_rx_prod & NUM_RX_BDS_MAX];
 sw_rx_data->page_offset = 0;
 sw_rx_data->data = data;
 sw_rx_data->mapping = mapping;


 rx_bd = (struct eth_rx_bd *)qed_chain_produce(&rxq->rx_bd_ring);
 WARN_ON(!rx_bd);
 rx_bd->addr.hi = cpu_to_le32(upper_32_bits(mapping));
 rx_bd->addr.lo = cpu_to_le32(lower_32_bits(mapping) +
         rxq->rx_headroom);

 rxq->sw_rx_prod++;
 rxq->filled_buffers++;

 return 0;
}
