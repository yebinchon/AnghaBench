
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;
struct freelQ_ce {struct sk_buff* skb; } ;
struct freelQ {size_t cidx; struct freelQ_ce* centries; } ;
struct adapter {int name; int pdev; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_addr ;
 int dma_len ;
 int dma_unmap_addr (struct freelQ_ce*,int ) ;
 int dma_unmap_len (struct freelQ_ce*,int ) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int pr_err (char*,int ,int ) ;
 int recycle_fl_buf (struct freelQ*,size_t) ;

__attribute__((used)) static void unexpected_offload(struct adapter *adapter, struct freelQ *fl)
{
 struct freelQ_ce *ce = &fl->centries[fl->cidx];
 struct sk_buff *skb = ce->skb;

 pci_dma_sync_single_for_cpu(adapter->pdev, dma_unmap_addr(ce, dma_addr),
       dma_unmap_len(ce, dma_len), PCI_DMA_FROMDEVICE);
 pr_err("%s: unexpected offload packet, cmd %u\n",
        adapter->name, *skb->data);
 recycle_fl_buf(fl, fl->cidx);
}
