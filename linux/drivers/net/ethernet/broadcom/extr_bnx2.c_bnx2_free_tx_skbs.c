
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct bnx2_tx_ring_info {struct bnx2_sw_tx_bd* tx_buf_ring; } ;
struct bnx2_sw_tx_bd {int nr_frags; struct sk_buff* skb; } ;
struct bnx2_napi {struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {int num_tx_rings; int dev; TYPE_1__* pdev; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_4__ {int * frags; } ;
struct TYPE_3__ {int dev; } ;


 int BNX2_NEXT_TX_BD (int) ;
 int BNX2_TX_DESC_CNT ;
 size_t BNX2_TX_RING_IDX (int) ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_addr (struct bnx2_sw_tx_bd*,int ) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int mapping ;
 int netdev_get_tx_queue (int ,int) ;
 int netdev_tx_reset_queue (int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void
bnx2_free_tx_skbs(struct bnx2 *bp)
{
 int i;

 for (i = 0; i < bp->num_tx_rings; i++) {
  struct bnx2_napi *bnapi = &bp->bnx2_napi[i];
  struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;
  int j;

  if (!txr->tx_buf_ring)
   continue;

  for (j = 0; j < BNX2_TX_DESC_CNT; ) {
   struct bnx2_sw_tx_bd *tx_buf = &txr->tx_buf_ring[j];
   struct sk_buff *skb = tx_buf->skb;
   int k, last;

   if (!skb) {
    j = BNX2_NEXT_TX_BD(j);
    continue;
   }

   dma_unmap_single(&bp->pdev->dev,
      dma_unmap_addr(tx_buf, mapping),
      skb_headlen(skb),
      PCI_DMA_TODEVICE);

   tx_buf->skb = ((void*)0);

   last = tx_buf->nr_frags;
   j = BNX2_NEXT_TX_BD(j);
   for (k = 0; k < last; k++, j = BNX2_NEXT_TX_BD(j)) {
    tx_buf = &txr->tx_buf_ring[BNX2_TX_RING_IDX(j)];
    dma_unmap_page(&bp->pdev->dev,
     dma_unmap_addr(tx_buf, mapping),
     skb_frag_size(&skb_shinfo(skb)->frags[k]),
     PCI_DMA_TODEVICE);
   }
   dev_kfree_skb(skb);
  }
  netdev_tx_reset_queue(netdev_get_tx_queue(bp->dev, i));
 }
}
