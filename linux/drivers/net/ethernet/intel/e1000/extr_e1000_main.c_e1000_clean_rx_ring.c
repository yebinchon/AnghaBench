
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct e1000_rx_ring {unsigned int count; unsigned long size; scalar_t__ rdt; scalar_t__ rdh; scalar_t__ next_to_use; scalar_t__ next_to_clean; struct e1000_rx_buffer* desc; struct e1000_rx_buffer* buffer_info; int * rx_skb_top; } ;
struct TYPE_2__ {int * page; int * data; } ;
struct e1000_rx_buffer {scalar_t__ dma; TYPE_1__ rxbuf; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_adapter {scalar_t__ clean_rx; int napi; int rx_buffer_len; struct pci_dev* pdev; struct e1000_hw hw; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_page (int *,scalar_t__,int ,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 scalar_t__ e1000_clean_jumbo_rx_irq ;
 scalar_t__ e1000_clean_rx_irq ;
 int memset (struct e1000_rx_buffer*,int ,unsigned long) ;
 int napi_free_frags (int *) ;
 int put_page (int *) ;
 int skb_free_frag (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void e1000_clean_rx_ring(struct e1000_adapter *adapter,
    struct e1000_rx_ring *rx_ring)
{
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_rx_buffer *buffer_info;
 struct pci_dev *pdev = adapter->pdev;
 unsigned long size;
 unsigned int i;


 for (i = 0; i < rx_ring->count; i++) {
  buffer_info = &rx_ring->buffer_info[i];
  if (adapter->clean_rx == e1000_clean_rx_irq) {
   if (buffer_info->dma)
    dma_unmap_single(&pdev->dev, buffer_info->dma,
       adapter->rx_buffer_len,
       DMA_FROM_DEVICE);
   if (buffer_info->rxbuf.data) {
    skb_free_frag(buffer_info->rxbuf.data);
    buffer_info->rxbuf.data = ((void*)0);
   }
  } else if (adapter->clean_rx == e1000_clean_jumbo_rx_irq) {
   if (buffer_info->dma)
    dma_unmap_page(&pdev->dev, buffer_info->dma,
            adapter->rx_buffer_len,
            DMA_FROM_DEVICE);
   if (buffer_info->rxbuf.page) {
    put_page(buffer_info->rxbuf.page);
    buffer_info->rxbuf.page = ((void*)0);
   }
  }

  buffer_info->dma = 0;
 }


 napi_free_frags(&adapter->napi);
 rx_ring->rx_skb_top = ((void*)0);

 size = sizeof(struct e1000_rx_buffer) * rx_ring->count;
 memset(rx_ring->buffer_info, 0, size);


 memset(rx_ring->desc, 0, rx_ring->size);

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 writel(0, hw->hw_addr + rx_ring->rdh);
 writel(0, hw->hw_addr + rx_ring->rdt);
}
