
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct pci_dev {int dummy; } ;
struct freelQ_ce {struct sk_buff* skb; } ;
struct freelQ {size_t cidx; int credits; struct freelQ_ce* centries; } ;
struct adapter {int napi; struct pci_dev* pdev; } ;


 int PCI_DMA_FROMDEVICE ;
 unsigned int copybreak ;
 int dma_addr ;
 int dma_len ;
 int dma_unmap_addr (struct freelQ_ce const*,int ) ;
 int dma_unmap_len (struct freelQ_ce const*,int ) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 int pci_dma_sync_single_for_cpu (struct pci_dev*,int ,int ,int ) ;
 int pci_dma_sync_single_for_device (struct pci_dev*,int ,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;
 int prefetch (int ) ;
 int recycle_fl_buf (struct freelQ*,size_t) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static inline struct sk_buff *get_packet(struct adapter *adapter,
      struct freelQ *fl, unsigned int len)
{
 const struct freelQ_ce *ce = &fl->centries[fl->cidx];
 struct pci_dev *pdev = adapter->pdev;
 struct sk_buff *skb;

 if (len < copybreak) {
  skb = napi_alloc_skb(&adapter->napi, len);
  if (!skb)
   goto use_orig_buf;

  skb_put(skb, len);
  pci_dma_sync_single_for_cpu(pdev,
         dma_unmap_addr(ce, dma_addr),
         dma_unmap_len(ce, dma_len),
         PCI_DMA_FROMDEVICE);
  skb_copy_from_linear_data(ce->skb, skb->data, len);
  pci_dma_sync_single_for_device(pdev,
            dma_unmap_addr(ce, dma_addr),
            dma_unmap_len(ce, dma_len),
            PCI_DMA_FROMDEVICE);
  recycle_fl_buf(fl, fl->cidx);
  return skb;
 }

use_orig_buf:
 if (fl->credits < 2) {
  recycle_fl_buf(fl, fl->cidx);
  return ((void*)0);
 }

 pci_unmap_single(pdev, dma_unmap_addr(ce, dma_addr),
    dma_unmap_len(ce, dma_len), PCI_DMA_FROMDEVICE);
 skb = ce->skb;
 prefetch(skb->data);

 skb_put(skb, len);
 return skb;
}
