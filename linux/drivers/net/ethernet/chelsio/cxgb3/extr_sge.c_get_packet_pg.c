
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned int len; unsigned int data_len; unsigned int truesize; int data; } ;
struct sge_rspq {scalar_t__ rx_recycle_buf; struct sk_buff* pg_skb; } ;
struct TYPE_4__ {scalar_t__ page; } ;
struct sge_fl {size_t cidx; unsigned int credits; int alloc_size; TYPE_1__ pg_chunk; struct rx_sw_desc* sdesc; } ;
struct TYPE_5__ {scalar_t__ page; scalar_t__ offset; int va; int mapping; int * p_cnt; } ;
struct rx_sw_desc {TYPE_2__ pg_chunk; } ;
struct adapter {int pdev; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int nr_frags; } ;


 int GFP_ATOMIC ;
 int PCI_DMA_FROMDEVICE ;
 unsigned int SGE_RX_COPY_THRES ;
 unsigned int SGE_RX_PULL_LEN ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int dma_addr ;
 int dma_unmap_addr (struct rx_sw_desc*,int ) ;
 scalar_t__ likely (int ) ;
 int memcpy (int ,int ,unsigned int) ;
 int pci_dma_sync_single_for_cpu (int ,int ,unsigned int,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,unsigned int,int ) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int prefetch (int *) ;
 int recycle_rx_buf (struct adapter*,struct sge_fl*,size_t) ;
 int skb_fill_page_desc (struct sk_buff*,int ,scalar_t__,scalar_t__,unsigned int) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *get_packet_pg(struct adapter *adap, struct sge_fl *fl,
         struct sge_rspq *q, unsigned int len,
         unsigned int drop_thres)
{
 struct sk_buff *newskb, *skb;
 struct rx_sw_desc *sd = &fl->sdesc[fl->cidx];

 dma_addr_t dma_addr = dma_unmap_addr(sd, dma_addr);

 newskb = skb = q->pg_skb;
 if (!skb && (len <= SGE_RX_COPY_THRES)) {
  newskb = alloc_skb(len, GFP_ATOMIC);
  if (likely(newskb != ((void*)0))) {
   __skb_put(newskb, len);
   pci_dma_sync_single_for_cpu(adap->pdev, dma_addr, len,
         PCI_DMA_FROMDEVICE);
   memcpy(newskb->data, sd->pg_chunk.va, len);
   pci_dma_sync_single_for_device(adap->pdev, dma_addr,
             len,
             PCI_DMA_FROMDEVICE);
  } else if (!drop_thres)
   return ((void*)0);
recycle:
  fl->credits--;
  recycle_rx_buf(adap, fl, fl->cidx);
  q->rx_recycle_buf++;
  return newskb;
 }

 if (unlikely(q->rx_recycle_buf || (!skb && fl->credits <= drop_thres)))
  goto recycle;

 prefetch(sd->pg_chunk.p_cnt);

 if (!skb)
  newskb = alloc_skb(SGE_RX_PULL_LEN, GFP_ATOMIC);

 if (unlikely(!newskb)) {
  if (!drop_thres)
   return ((void*)0);
  goto recycle;
 }

 pci_dma_sync_single_for_cpu(adap->pdev, dma_addr, len,
        PCI_DMA_FROMDEVICE);
 (*sd->pg_chunk.p_cnt)--;
 if (!*sd->pg_chunk.p_cnt && sd->pg_chunk.page != fl->pg_chunk.page)
  pci_unmap_page(adap->pdev,
          sd->pg_chunk.mapping,
          fl->alloc_size,
          PCI_DMA_FROMDEVICE);
 if (!skb) {
  __skb_put(newskb, SGE_RX_PULL_LEN);
  memcpy(newskb->data, sd->pg_chunk.va, SGE_RX_PULL_LEN);
  skb_fill_page_desc(newskb, 0, sd->pg_chunk.page,
       sd->pg_chunk.offset + SGE_RX_PULL_LEN,
       len - SGE_RX_PULL_LEN);
  newskb->len = len;
  newskb->data_len = len - SGE_RX_PULL_LEN;
  newskb->truesize += newskb->data_len;
 } else {
  skb_fill_page_desc(newskb, skb_shinfo(newskb)->nr_frags,
       sd->pg_chunk.page,
       sd->pg_chunk.offset, len);
  newskb->len += len;
  newskb->data_len += len;
  newskb->truesize += len;
 }

 fl->credits--;




 return newskb;
}
