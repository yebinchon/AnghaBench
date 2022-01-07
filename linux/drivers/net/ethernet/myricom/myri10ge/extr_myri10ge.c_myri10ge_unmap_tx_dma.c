
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct myri10ge_tx_buf {int mask; int req; TYPE_1__* info; } ;
struct myri10ge_priv {int pdev; } ;
struct TYPE_4__ {int * skb; } ;


 int PCI_DMA_TODEVICE ;
 int bus ;
 int dma_unmap_addr (TYPE_1__*,int ) ;
 unsigned int dma_unmap_len (TYPE_1__*,unsigned int) ;
 int dma_unmap_len_set (TYPE_1__*,unsigned int,int ) ;
 int pci_unmap_page (int ,int ,unsigned int,int ) ;
 int pci_unmap_single (int ,int ,unsigned int,int ) ;

__attribute__((used)) static void myri10ge_unmap_tx_dma(struct myri10ge_priv *mgp,
      struct myri10ge_tx_buf *tx, int idx)
{
 unsigned int len;
 int last_idx;


 last_idx = (idx + 1) & tx->mask;
 idx = tx->req & tx->mask;
 do {
  len = dma_unmap_len(&tx->info[idx], len);
  if (len) {
   if (tx->info[idx].skb != ((void*)0))
    pci_unmap_single(mgp->pdev,
       dma_unmap_addr(&tx->info[idx],
        bus), len,
       PCI_DMA_TODEVICE);
   else
    pci_unmap_page(mgp->pdev,
            dma_unmap_addr(&tx->info[idx],
             bus), len,
            PCI_DMA_TODEVICE);
   dma_unmap_len_set(&tx->info[idx], len, 0);
   tx->info[idx].skb = ((void*)0);
  }
  idx = (idx + 1) & tx->mask;
 } while (idx != last_idx);
}
