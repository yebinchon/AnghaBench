
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct freelQ_ce {int * skb; } ;
struct freelQ {unsigned int cidx; unsigned int size; struct freelQ_ce* centries; int credits; } ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (int *) ;
 int dma_addr ;
 int dma_len ;
 int dma_unmap_addr (struct freelQ_ce*,int ) ;
 int dma_unmap_len (struct freelQ_ce*,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void free_freelQ_buffers(struct pci_dev *pdev, struct freelQ *q)
{
 unsigned int cidx = q->cidx;

 while (q->credits--) {
  struct freelQ_ce *ce = &q->centries[cidx];

  pci_unmap_single(pdev, dma_unmap_addr(ce, dma_addr),
     dma_unmap_len(ce, dma_len),
     PCI_DMA_FROMDEVICE);
  dev_kfree_skb(ce->skb);
  ce->skb = ((void*)0);
  if (++cidx == q->size)
   cidx = 0;
 }
}
