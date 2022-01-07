
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ixgb_desc_ring {unsigned int count; unsigned long size; scalar_t__ next_to_use; scalar_t__ next_to_clean; struct ixgb_buffer* desc; struct ixgb_buffer* buffer_info; } ;
struct ixgb_buffer {int * skb; scalar_t__ length; scalar_t__ dma; } ;
struct ixgb_adapter {int hw; struct pci_dev* pdev; struct ixgb_desc_ring rx_ring; } ;


 int DMA_FROM_DEVICE ;
 int IXGB_WRITE_REG (int *,int ,int ) ;
 int RDH ;
 int RDT ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int *,scalar_t__,scalar_t__,int ) ;
 int memset (struct ixgb_buffer*,int ,unsigned long) ;

__attribute__((used)) static void
ixgb_clean_rx_ring(struct ixgb_adapter *adapter)
{
 struct ixgb_desc_ring *rx_ring = &adapter->rx_ring;
 struct ixgb_buffer *buffer_info;
 struct pci_dev *pdev = adapter->pdev;
 unsigned long size;
 unsigned int i;



 for (i = 0; i < rx_ring->count; i++) {
  buffer_info = &rx_ring->buffer_info[i];
  if (buffer_info->dma) {
   dma_unmap_single(&pdev->dev,
      buffer_info->dma,
      buffer_info->length,
      DMA_FROM_DEVICE);
   buffer_info->dma = 0;
   buffer_info->length = 0;
  }

  if (buffer_info->skb) {
   dev_kfree_skb(buffer_info->skb);
   buffer_info->skb = ((void*)0);
  }
 }

 size = sizeof(struct ixgb_buffer) * rx_ring->count;
 memset(rx_ring->buffer_info, 0, size);



 memset(rx_ring->desc, 0, rx_ring->size);

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 IXGB_WRITE_REG(&adapter->hw, RDH, 0);
 IXGB_WRITE_REG(&adapter->hw, RDT, 0);
}
