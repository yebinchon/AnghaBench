
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_tx_buffer {int num_of_bufs; scalar_t__ map_linear_data; struct ena_com_buf* bufs; } ;
struct ena_ring {int dev; } ;
struct ena_com_buf {int dummy; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_addr (struct ena_com_buf*,int ) ;
 int dma_unmap_len (struct ena_com_buf*,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int len ;
 int paddr ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ena_unmap_tx_skb(struct ena_ring *tx_ring,
        struct ena_tx_buffer *tx_info)
{
 struct ena_com_buf *ena_buf;
 u32 cnt;
 int i;

 ena_buf = tx_info->bufs;
 cnt = tx_info->num_of_bufs;

 if (unlikely(!cnt))
  return;

 if (tx_info->map_linear_data) {
  dma_unmap_single(tx_ring->dev,
     dma_unmap_addr(ena_buf, paddr),
     dma_unmap_len(ena_buf, len),
     DMA_TO_DEVICE);
  ena_buf++;
  cnt--;
 }


 for (i = 0; i < cnt; i++) {
  dma_unmap_page(tx_ring->dev, dma_unmap_addr(ena_buf, paddr),
          dma_unmap_len(ena_buf, len), DMA_TO_DEVICE);
  ena_buf++;
 }
}
