
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfp_net_tx_ring {scalar_t__ rd_p; scalar_t__ wr_p; int idx; scalar_t__ is_xdp; scalar_t__ wr_ptr_add; scalar_t__ qcp_rd_p; int size; int txds; struct nfp_net_tx_buf* txbufs; } ;
struct nfp_net_tx_buf {int fidx; struct sk_buff* skb; scalar_t__ dma_addr; } ;
struct nfp_net_dp {int netdev; int dev; } ;
struct netdev_queue {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 int D_IDX (struct nfp_net_tx_ring*,scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int memset (int ,int ,int ) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_reset_queue (struct netdev_queue*) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void
nfp_net_tx_ring_reset(struct nfp_net_dp *dp, struct nfp_net_tx_ring *tx_ring)
{
 const skb_frag_t *frag;
 struct netdev_queue *nd_q;

 while (!tx_ring->is_xdp && tx_ring->rd_p != tx_ring->wr_p) {
  struct nfp_net_tx_buf *tx_buf;
  struct sk_buff *skb;
  int idx, nr_frags;

  idx = D_IDX(tx_ring, tx_ring->rd_p);
  tx_buf = &tx_ring->txbufs[idx];

  skb = tx_ring->txbufs[idx].skb;
  nr_frags = skb_shinfo(skb)->nr_frags;

  if (tx_buf->fidx == -1) {

   dma_unmap_single(dp->dev, tx_buf->dma_addr,
      skb_headlen(skb), DMA_TO_DEVICE);
  } else {

   frag = &skb_shinfo(skb)->frags[tx_buf->fidx];
   dma_unmap_page(dp->dev, tx_buf->dma_addr,
           skb_frag_size(frag), DMA_TO_DEVICE);
  }


  if (tx_buf->fidx == nr_frags - 1)
   dev_kfree_skb_any(skb);

  tx_buf->dma_addr = 0;
  tx_buf->skb = ((void*)0);
  tx_buf->fidx = -2;

  tx_ring->qcp_rd_p++;
  tx_ring->rd_p++;
 }

 memset(tx_ring->txds, 0, tx_ring->size);
 tx_ring->wr_p = 0;
 tx_ring->rd_p = 0;
 tx_ring->qcp_rd_p = 0;
 tx_ring->wr_ptr_add = 0;

 if (tx_ring->is_xdp || !dp->netdev)
  return;

 nd_q = netdev_get_tx_queue(dp->netdev, tx_ring->idx);
 netdev_tx_reset_queue(nd_q);
}
