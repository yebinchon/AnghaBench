
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct atl1e_tx_ring {size_t count; int next_to_clean; struct atl1e_tx_buffer* tx_buffer; } ;
struct atl1e_tx_buffer {int flags; int * skb; scalar_t__ dma; int length; } ;
struct atl1e_adapter {int netdev; int pdev; int hw; struct atl1e_tx_ring tx_ring; } ;


 int ATL1E_TX_PCIMAP_PAGE ;
 int ATL1E_TX_PCIMAP_SINGLE ;
 size_t AT_READ_REGW (int *,int ) ;
 int PCI_DMA_TODEVICE ;
 int REG_TPD_CONS_IDX ;
 size_t atomic_read (int *) ;
 int atomic_set (int *,size_t) ;
 int dev_consume_skb_irq (int *) ;
 scalar_t__ netif_carrier_ok (int ) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int pci_unmap_page (int ,scalar_t__,int ,int ) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static bool atl1e_clean_tx_irq(struct atl1e_adapter *adapter)
{
 struct atl1e_tx_ring *tx_ring = &adapter->tx_ring;
 struct atl1e_tx_buffer *tx_buffer = ((void*)0);
 u16 hw_next_to_clean = AT_READ_REGW(&adapter->hw, REG_TPD_CONS_IDX);
 u16 next_to_clean = atomic_read(&tx_ring->next_to_clean);

 while (next_to_clean != hw_next_to_clean) {
  tx_buffer = &tx_ring->tx_buffer[next_to_clean];
  if (tx_buffer->dma) {
   if (tx_buffer->flags & ATL1E_TX_PCIMAP_SINGLE)
    pci_unmap_single(adapter->pdev, tx_buffer->dma,
     tx_buffer->length, PCI_DMA_TODEVICE);
   else if (tx_buffer->flags & ATL1E_TX_PCIMAP_PAGE)
    pci_unmap_page(adapter->pdev, tx_buffer->dma,
     tx_buffer->length, PCI_DMA_TODEVICE);
   tx_buffer->dma = 0;
  }

  if (tx_buffer->skb) {
   dev_consume_skb_irq(tx_buffer->skb);
   tx_buffer->skb = ((void*)0);
  }

  if (++next_to_clean == tx_ring->count)
   next_to_clean = 0;
 }

 atomic_set(&tx_ring->next_to_clean, next_to_clean);

 if (netif_queue_stopped(adapter->netdev) &&
   netif_carrier_ok(adapter->netdev)) {
  netif_wake_queue(adapter->netdev);
 }

 return 1;
}
