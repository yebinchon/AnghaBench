
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ena_com_buf {int paddr; } ;
struct ena_rx_buffer {struct page* page; struct ena_com_buf ena_buf; } ;
struct ena_ring {int dev; int netdev; int adapter; } ;


 int DMA_FROM_DEVICE ;
 int ENA_PAGE_SIZE ;
 int __free_page (struct page*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int netif_warn (int ,int ,int ,char*) ;
 int rx_err ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ena_free_rx_page(struct ena_ring *rx_ring,
        struct ena_rx_buffer *rx_info)
{
 struct page *page = rx_info->page;
 struct ena_com_buf *ena_buf = &rx_info->ena_buf;

 if (unlikely(!page)) {
  netif_warn(rx_ring->adapter, rx_err, rx_ring->netdev,
      "Trying to free unallocated buffer\n");
  return;
 }

 dma_unmap_page(rx_ring->dev, ena_buf->paddr, ENA_PAGE_SIZE,
         DMA_FROM_DEVICE);

 __free_page(page);
 rx_info->page = ((void*)0);
}
