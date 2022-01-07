
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct myri10ge_tx_buf {int done; int req; int mask; int * req_list; TYPE_4__* req_bytes; TYPE_4__* info; } ;
struct TYPE_11__ {int fill_cnt; int cnt; int mask; TYPE_4__* shadow; TYPE_4__* info; } ;
struct TYPE_10__ {int cnt; int fill_cnt; int mask; TYPE_4__* shadow; TYPE_4__* info; } ;
struct TYPE_9__ {int tx_dropped; } ;
struct myri10ge_slice_state {struct myri10ge_tx_buf tx; TYPE_3__ rx_small; TYPE_2__ rx_big; TYPE_1__ stats; struct myri10ge_priv* mgp; } ;
struct myri10ge_priv {scalar_t__ big_bytes; scalar_t__ small_bytes; int pdev; } ;
struct TYPE_12__ {struct sk_buff* skb; int page; void* page_offset; } ;


 scalar_t__ MXGEFW_PAD ;
 void* MYRI10GE_ALLOC_SIZE ;
 int PCI_DMA_TODEVICE ;
 int bus ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_addr (TYPE_4__*,int ) ;
 int dma_unmap_len (TYPE_4__*,int) ;
 int dma_unmap_len_set (TYPE_4__*,int,int ) ;
 int kfree (TYPE_4__*) ;
 int myri10ge_unmap_rx_page (int ,TYPE_4__*,scalar_t__) ;
 int pci_unmap_page (int ,int ,int,int ) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int put_page (int ) ;

__attribute__((used)) static void myri10ge_free_rings(struct myri10ge_slice_state *ss)
{
 struct myri10ge_priv *mgp = ss->mgp;
 struct sk_buff *skb;
 struct myri10ge_tx_buf *tx;
 int i, len, idx;


 if (ss->tx.req_list == ((void*)0))
  return;

 for (i = ss->rx_big.cnt; i < ss->rx_big.fill_cnt; i++) {
  idx = i & ss->rx_big.mask;
  if (i == ss->rx_big.fill_cnt - 1)
   ss->rx_big.info[idx].page_offset = MYRI10GE_ALLOC_SIZE;
  myri10ge_unmap_rx_page(mgp->pdev, &ss->rx_big.info[idx],
           mgp->big_bytes);
  put_page(ss->rx_big.info[idx].page);
 }

 if (mgp->small_bytes == 0)
  ss->rx_small.fill_cnt = ss->rx_small.cnt;
 for (i = ss->rx_small.cnt; i < ss->rx_small.fill_cnt; i++) {
  idx = i & ss->rx_small.mask;
  if (i == ss->rx_small.fill_cnt - 1)
   ss->rx_small.info[idx].page_offset =
       MYRI10GE_ALLOC_SIZE;
  myri10ge_unmap_rx_page(mgp->pdev, &ss->rx_small.info[idx],
           mgp->small_bytes + MXGEFW_PAD);
  put_page(ss->rx_small.info[idx].page);
 }
 tx = &ss->tx;
 while (tx->done != tx->req) {
  idx = tx->done & tx->mask;
  skb = tx->info[idx].skb;


  tx->info[idx].skb = ((void*)0);
  tx->done++;
  len = dma_unmap_len(&tx->info[idx], len);
  dma_unmap_len_set(&tx->info[idx], len, 0);
  if (skb) {
   ss->stats.tx_dropped++;
   dev_kfree_skb_any(skb);
   if (len)
    pci_unmap_single(mgp->pdev,
       dma_unmap_addr(&tx->info[idx],
        bus), len,
       PCI_DMA_TODEVICE);
  } else {
   if (len)
    pci_unmap_page(mgp->pdev,
            dma_unmap_addr(&tx->info[idx],
             bus), len,
            PCI_DMA_TODEVICE);
  }
 }
 kfree(ss->rx_big.info);

 kfree(ss->rx_small.info);

 kfree(ss->tx.info);

 kfree(ss->rx_big.shadow);

 kfree(ss->rx_small.shadow);

 kfree(ss->tx.req_bytes);
 ss->tx.req_bytes = ((void*)0);
 ss->tx.req_list = ((void*)0);
}
