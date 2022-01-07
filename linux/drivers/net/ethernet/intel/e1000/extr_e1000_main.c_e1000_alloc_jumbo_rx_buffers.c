
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct e1000_rx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ rdt; struct e1000_rx_buffer* buffer_info; } ;
struct e1000_rx_desc {int buffer_addr; } ;
struct TYPE_3__ {int * page; } ;
struct e1000_rx_buffer {scalar_t__ dma; TYPE_1__ rxbuf; } ;
struct TYPE_4__ {scalar_t__ hw_addr; } ;
struct e1000_adapter {TYPE_2__ hw; int alloc_rx_buff_failed; int rx_buffer_len; struct pci_dev* pdev; } ;


 int DMA_FROM_DEVICE ;
 struct e1000_rx_desc* E1000_RX_DESC (struct e1000_rx_ring,unsigned int) ;
 int GFP_ATOMIC ;
 int * alloc_page (int ) ;
 int cpu_to_le64 (scalar_t__) ;
 scalar_t__ dma_map_page (int *,int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int dma_wmb () ;
 scalar_t__ likely (int) ;
 int put_page (int *) ;
 scalar_t__ unlikely (int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void
e1000_alloc_jumbo_rx_buffers(struct e1000_adapter *adapter,
        struct e1000_rx_ring *rx_ring, int cleaned_count)
{
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_rx_desc *rx_desc;
 struct e1000_rx_buffer *buffer_info;
 unsigned int i;

 i = rx_ring->next_to_use;
 buffer_info = &rx_ring->buffer_info[i];

 while (cleaned_count--) {

  if (!buffer_info->rxbuf.page) {
   buffer_info->rxbuf.page = alloc_page(GFP_ATOMIC);
   if (unlikely(!buffer_info->rxbuf.page)) {
    adapter->alloc_rx_buff_failed++;
    break;
   }
  }

  if (!buffer_info->dma) {
   buffer_info->dma = dma_map_page(&pdev->dev,
       buffer_info->rxbuf.page, 0,
       adapter->rx_buffer_len,
       DMA_FROM_DEVICE);
   if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
    put_page(buffer_info->rxbuf.page);
    buffer_info->rxbuf.page = ((void*)0);
    buffer_info->dma = 0;
    adapter->alloc_rx_buff_failed++;
    break;
   }
  }

  rx_desc = E1000_RX_DESC(*rx_ring, i);
  rx_desc->buffer_addr = cpu_to_le64(buffer_info->dma);

  if (unlikely(++i == rx_ring->count))
   i = 0;
  buffer_info = &rx_ring->buffer_info[i];
 }

 if (likely(rx_ring->next_to_use != i)) {
  rx_ring->next_to_use = i;
  if (unlikely(i-- == 0))
   i = (rx_ring->count - 1);






  dma_wmb();
  writel(i, adapter->hw.hw_addr + rx_ring->rdt);
 }
}
