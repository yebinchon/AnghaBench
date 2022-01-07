
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct pci_dev {int dummy; } ;
struct atl1e_tx_ring {size_t count; struct atl1e_tx_buffer* tx_buffer; struct atl1e_tx_buffer* desc; } ;
struct atl1e_tx_buffer {int flags; int * skb; scalar_t__ dma; int length; } ;
struct atl1e_tpd_desc {int dummy; } ;
struct atl1e_adapter {struct pci_dev* pdev; struct atl1e_tx_ring tx_ring; } ;


 int ATL1E_TX_PCIMAP_PAGE ;
 int ATL1E_TX_PCIMAP_SINGLE ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (int *) ;
 int memset (struct atl1e_tx_buffer*,int ,int) ;
 int pci_unmap_page (struct pci_dev*,scalar_t__,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,scalar_t__,int ,int ) ;

__attribute__((used)) static void atl1e_clean_tx_ring(struct atl1e_adapter *adapter)
{
 struct atl1e_tx_ring *tx_ring = &adapter->tx_ring;
 struct atl1e_tx_buffer *tx_buffer = ((void*)0);
 struct pci_dev *pdev = adapter->pdev;
 u16 index, ring_count;

 if (tx_ring->desc == ((void*)0) || tx_ring->tx_buffer == ((void*)0))
  return;

 ring_count = tx_ring->count;

 for (index = 0; index < ring_count; index++) {
  tx_buffer = &tx_ring->tx_buffer[index];
  if (tx_buffer->dma) {
   if (tx_buffer->flags & ATL1E_TX_PCIMAP_SINGLE)
    pci_unmap_single(pdev, tx_buffer->dma,
     tx_buffer->length, PCI_DMA_TODEVICE);
   else if (tx_buffer->flags & ATL1E_TX_PCIMAP_PAGE)
    pci_unmap_page(pdev, tx_buffer->dma,
     tx_buffer->length, PCI_DMA_TODEVICE);
   tx_buffer->dma = 0;
  }
 }

 for (index = 0; index < ring_count; index++) {
  tx_buffer = &tx_ring->tx_buffer[index];
  if (tx_buffer->skb) {
   dev_kfree_skb_any(tx_buffer->skb);
   tx_buffer->skb = ((void*)0);
  }
 }

 memset(tx_ring->desc, 0, sizeof(struct atl1e_tpd_desc) *
    ring_count);
 memset(tx_ring->tx_buffer, 0, sizeof(struct atl1e_tx_buffer) *
    ring_count);
}
