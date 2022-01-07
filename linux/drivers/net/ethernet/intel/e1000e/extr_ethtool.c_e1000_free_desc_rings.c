
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct e1000_ring {int count; struct e1000_buffer* buffer_info; int * desc; int dma; int size; } ;
struct e1000_buffer {int length; int skb; scalar_t__ dma; } ;
struct e1000_adapter {struct pci_dev* pdev; struct e1000_ring test_rx_ring; struct e1000_ring test_tx_ring; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dev_kfree_skb (int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;
 int kfree (struct e1000_buffer*) ;

__attribute__((used)) static void e1000_free_desc_rings(struct e1000_adapter *adapter)
{
 struct e1000_ring *tx_ring = &adapter->test_tx_ring;
 struct e1000_ring *rx_ring = &adapter->test_rx_ring;
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_buffer *buffer_info;
 int i;

 if (tx_ring->desc && tx_ring->buffer_info) {
  for (i = 0; i < tx_ring->count; i++) {
   buffer_info = &tx_ring->buffer_info[i];

   if (buffer_info->dma)
    dma_unmap_single(&pdev->dev,
       buffer_info->dma,
       buffer_info->length,
       DMA_TO_DEVICE);
   dev_kfree_skb(buffer_info->skb);
  }
 }

 if (rx_ring->desc && rx_ring->buffer_info) {
  for (i = 0; i < rx_ring->count; i++) {
   buffer_info = &rx_ring->buffer_info[i];

   if (buffer_info->dma)
    dma_unmap_single(&pdev->dev,
       buffer_info->dma,
       2048, DMA_FROM_DEVICE);
   dev_kfree_skb(buffer_info->skb);
  }
 }

 if (tx_ring->desc) {
  dma_free_coherent(&pdev->dev, tx_ring->size, tx_ring->desc,
      tx_ring->dma);
  tx_ring->desc = ((void*)0);
 }
 if (rx_ring->desc) {
  dma_free_coherent(&pdev->dev, rx_ring->size, rx_ring->desc,
      rx_ring->dma);
  rx_ring->desc = ((void*)0);
 }

 kfree(tx_ring->buffer_info);
 tx_ring->buffer_info = ((void*)0);
 kfree(rx_ring->buffer_info);
 rx_ring->buffer_info = ((void*)0);
}
