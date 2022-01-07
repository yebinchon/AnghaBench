
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nfp_net_tx_ring {scalar_t__ wr_p; scalar_t__ rd_p; scalar_t__ qcp_rd_p; scalar_t__ cnt; int idx; struct nfp_net_tx_buf* txbufs; int qcp_q; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_tx_buf {int fidx; scalar_t__ pkt_cnt; scalar_t__ real_len; struct sk_buff* skb; scalar_t__ dma_addr; } ;
struct nfp_net_r_vector {int tx_sync; int tx_pkts; int tx_bytes; TYPE_1__* nfp_net; } ;
struct nfp_net_dp {int netdev; int dev; } ;
struct netdev_queue {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_4__ {int nr_frags; int * frags; } ;
struct TYPE_3__ {struct nfp_net_dp dp; } ;


 int DMA_TO_DEVICE ;
 int D_IDX (struct nfp_net_tx_ring*,scalar_t__) ;
 int WARN_ONCE (int,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int napi_consume_skb (struct sk_buff*,int) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_completed_queue (struct netdev_queue*,scalar_t__,scalar_t__) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 scalar_t__ nfp_net_tx_ring_should_wake (struct nfp_net_tx_ring*) ;
 scalar_t__ nfp_qcp_rd_ptr_read (int ) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int smp_mb () ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void nfp_net_tx_complete(struct nfp_net_tx_ring *tx_ring, int budget)
{
 struct nfp_net_r_vector *r_vec = tx_ring->r_vec;
 struct nfp_net_dp *dp = &r_vec->nfp_net->dp;
 struct netdev_queue *nd_q;
 u32 done_pkts = 0, done_bytes = 0;
 u32 qcp_rd_p;
 int todo;

 if (tx_ring->wr_p == tx_ring->rd_p)
  return;


 qcp_rd_p = nfp_qcp_rd_ptr_read(tx_ring->qcp_q);

 if (qcp_rd_p == tx_ring->qcp_rd_p)
  return;

 todo = D_IDX(tx_ring, qcp_rd_p - tx_ring->qcp_rd_p);

 while (todo--) {
  const skb_frag_t *frag;
  struct nfp_net_tx_buf *tx_buf;
  struct sk_buff *skb;
  int fidx, nr_frags;
  int idx;

  idx = D_IDX(tx_ring, tx_ring->rd_p++);
  tx_buf = &tx_ring->txbufs[idx];

  skb = tx_buf->skb;
  if (!skb)
   continue;

  nr_frags = skb_shinfo(skb)->nr_frags;
  fidx = tx_buf->fidx;

  if (fidx == -1) {

   dma_unmap_single(dp->dev, tx_buf->dma_addr,
      skb_headlen(skb), DMA_TO_DEVICE);

   done_pkts += tx_buf->pkt_cnt;
   done_bytes += tx_buf->real_len;
  } else {

   frag = &skb_shinfo(skb)->frags[fidx];
   dma_unmap_page(dp->dev, tx_buf->dma_addr,
           skb_frag_size(frag), DMA_TO_DEVICE);
  }


  if (fidx == nr_frags - 1)
   napi_consume_skb(skb, budget);

  tx_buf->dma_addr = 0;
  tx_buf->skb = ((void*)0);
  tx_buf->fidx = -2;
 }

 tx_ring->qcp_rd_p = qcp_rd_p;

 u64_stats_update_begin(&r_vec->tx_sync);
 r_vec->tx_bytes += done_bytes;
 r_vec->tx_pkts += done_pkts;
 u64_stats_update_end(&r_vec->tx_sync);

 if (!dp->netdev)
  return;

 nd_q = netdev_get_tx_queue(dp->netdev, tx_ring->idx);
 netdev_tx_completed_queue(nd_q, done_pkts, done_bytes);
 if (nfp_net_tx_ring_should_wake(tx_ring)) {

  smp_mb();

  if (unlikely(netif_tx_queue_stopped(nd_q)))
   netif_tx_wake_queue(nd_q);
 }

 WARN_ONCE(tx_ring->wr_p - tx_ring->rd_p > tx_ring->cnt,
    "TX ring corruption rd_p=%u wr_p=%u cnt=%u\n",
    tx_ring->rd_p, tx_ring->wr_p, tx_ring->cnt);
}
