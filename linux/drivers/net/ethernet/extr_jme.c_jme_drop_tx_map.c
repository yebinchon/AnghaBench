
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_ring {struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {scalar_t__ len; scalar_t__ mapping; } ;
struct jme_adapter {int tx_ring_mask; int pdev; struct jme_ring* txring; } ;


 int PCI_DMA_TODEVICE ;
 int pci_unmap_page (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void jme_drop_tx_map(struct jme_adapter *jme, int startidx, int count)
{
 struct jme_ring *txring = &(jme->txring[0]);
 struct jme_buffer_info *txbi = txring->bufinf, *ctxbi;
 int mask = jme->tx_ring_mask;
 int j;

 for (j = 0 ; j < count ; j++) {
  ctxbi = txbi + ((startidx + j + 2) & (mask));
  pci_unmap_page(jme->pdev,
    ctxbi->mapping,
    ctxbi->len,
    PCI_DMA_TODEVICE);

  ctxbi->mapping = 0;
  ctxbi->len = 0;
 }
}
