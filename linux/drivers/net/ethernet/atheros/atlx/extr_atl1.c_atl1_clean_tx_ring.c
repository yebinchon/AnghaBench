
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct atl1_tpd_ring {unsigned int count; unsigned long size; int next_to_clean; int next_to_use; struct atl1_buffer* desc; struct atl1_buffer* buffer_info; } ;
struct atl1_buffer {int * skb; scalar_t__ dma; int length; } ;
struct atl1_adapter {struct pci_dev* pdev; struct atl1_tpd_ring tpd_ring; } ;


 int PCI_DMA_TODEVICE ;
 int atomic_set (int *,int ) ;
 int dev_kfree_skb_any (int *) ;
 int memset (struct atl1_buffer*,int ,unsigned long) ;
 int pci_unmap_page (struct pci_dev*,scalar_t__,int ,int ) ;

__attribute__((used)) static void atl1_clean_tx_ring(struct atl1_adapter *adapter)
{
 struct atl1_tpd_ring *tpd_ring = &adapter->tpd_ring;
 struct atl1_buffer *buffer_info;
 struct pci_dev *pdev = adapter->pdev;
 unsigned long size;
 unsigned int i;


 for (i = 0; i < tpd_ring->count; i++) {
  buffer_info = &tpd_ring->buffer_info[i];
  if (buffer_info->dma) {
   pci_unmap_page(pdev, buffer_info->dma,
    buffer_info->length, PCI_DMA_TODEVICE);
   buffer_info->dma = 0;
  }
 }

 for (i = 0; i < tpd_ring->count; i++) {
  buffer_info = &tpd_ring->buffer_info[i];
  if (buffer_info->skb) {
   dev_kfree_skb_any(buffer_info->skb);
   buffer_info->skb = ((void*)0);
  }
 }

 size = sizeof(struct atl1_buffer) * tpd_ring->count;
 memset(tpd_ring->buffer_info, 0, size);


 memset(tpd_ring->desc, 0, tpd_ring->size);

 atomic_set(&tpd_ring->next_to_use, 0);
 atomic_set(&tpd_ring->next_to_clean, 0);
}
