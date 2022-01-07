
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct atl1_rrd_ring {int next_to_clean; scalar_t__ next_to_use; } ;
struct atl1_rfd_ring {unsigned int count; unsigned long size; int next_to_use; scalar_t__ next_to_clean; struct atl1_buffer* desc; struct atl1_buffer* buffer_info; } ;
struct atl1_buffer {int * skb; scalar_t__ dma; int length; } ;
struct atl1_adapter {struct pci_dev* pdev; struct atl1_rrd_ring rrd_ring; struct atl1_rfd_ring rfd_ring; } ;


 int PCI_DMA_FROMDEVICE ;
 int atomic_set (int *,int ) ;
 int dev_kfree_skb (int *) ;
 int memset (struct atl1_buffer*,int ,unsigned long) ;
 int pci_unmap_page (struct pci_dev*,scalar_t__,int ,int ) ;

__attribute__((used)) static void atl1_clean_rx_ring(struct atl1_adapter *adapter)
{
 struct atl1_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct atl1_rrd_ring *rrd_ring = &adapter->rrd_ring;
 struct atl1_buffer *buffer_info;
 struct pci_dev *pdev = adapter->pdev;
 unsigned long size;
 unsigned int i;


 for (i = 0; i < rfd_ring->count; i++) {
  buffer_info = &rfd_ring->buffer_info[i];
  if (buffer_info->dma) {
   pci_unmap_page(pdev, buffer_info->dma,
    buffer_info->length, PCI_DMA_FROMDEVICE);
   buffer_info->dma = 0;
  }
  if (buffer_info->skb) {
   dev_kfree_skb(buffer_info->skb);
   buffer_info->skb = ((void*)0);
  }
 }

 size = sizeof(struct atl1_buffer) * rfd_ring->count;
 memset(rfd_ring->buffer_info, 0, size);


 memset(rfd_ring->desc, 0, rfd_ring->size);

 rfd_ring->next_to_clean = 0;
 atomic_set(&rfd_ring->next_to_use, 0);

 rrd_ring->next_to_use = 0;
 atomic_set(&rrd_ring->next_to_clean, 0);
}
