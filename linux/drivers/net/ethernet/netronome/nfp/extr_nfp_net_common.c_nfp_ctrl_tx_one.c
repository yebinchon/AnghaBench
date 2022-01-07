
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int len; int data; } ;
struct nfp_net_tx_ring {int wr_ptr_add; int wr_p; struct nfp_net_tx_desc* txds; struct nfp_net_tx_buf* txbufs; } ;
struct nfp_net_tx_desc {unsigned int offset_eop; scalar_t__ lso_hdrlen; scalar_t__ mss; scalar_t__ flags; void* data_len; void* dma_len; } ;
struct nfp_net_tx_buf {int fidx; int pkt_cnt; unsigned int real_len; int dma_addr; struct sk_buff* skb; } ;
struct nfp_net_r_vector {int tx_sync; int tx_errors; int queue; int tx_busy; struct nfp_net_tx_ring* tx_ring; TYPE_1__* nfp_net; } ;
struct nfp_net_dp {int dev; } ;
struct nfp_net {int app; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int nr_frags; } ;
struct TYPE_3__ {struct nfp_net_dp dp; } ;


 int DMA_TO_DEVICE ;
 int D_IDX (struct nfp_net_tx_ring*,int ) ;
 int NFP_META_PORT_ID_CTRL ;
 int NFP_NET_META_PORTID ;
 unsigned int PCIE_DESC_TX_EOP ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int __skb_queue_head (int *,struct sk_buff*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 void* cpu_to_le16 (unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ nfp_app_ctrl_has_meta (int ) ;
 int nfp_desc_set_dma_addr (struct nfp_net_tx_desc*,int ) ;
 int nfp_net_tx_full (struct nfp_net_tx_ring*,int) ;
 int nfp_net_tx_xmit_more_flush (struct nfp_net_tx_ring*) ;
 int nn_dp_warn (struct nfp_net_dp*,char*) ;
 int put_unaligned_be32 (int ,int ) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
nfp_ctrl_tx_one(struct nfp_net *nn, struct nfp_net_r_vector *r_vec,
  struct sk_buff *skb, bool old)
{
 unsigned int real_len = skb->len, meta_len = 0;
 struct nfp_net_tx_ring *tx_ring;
 struct nfp_net_tx_buf *txbuf;
 struct nfp_net_tx_desc *txd;
 struct nfp_net_dp *dp;
 dma_addr_t dma_addr;
 int wr_idx;

 dp = &r_vec->nfp_net->dp;
 tx_ring = r_vec->tx_ring;

 if (WARN_ON_ONCE(skb_shinfo(skb)->nr_frags)) {
  nn_dp_warn(dp, "Driver's CTRL TX does not implement gather\n");
  goto err_free;
 }

 if (unlikely(nfp_net_tx_full(tx_ring, 1))) {
  u64_stats_update_begin(&r_vec->tx_sync);
  r_vec->tx_busy++;
  u64_stats_update_end(&r_vec->tx_sync);
  if (!old)
   __skb_queue_tail(&r_vec->queue, skb);
  else
   __skb_queue_head(&r_vec->queue, skb);
  return 1;
 }

 if (nfp_app_ctrl_has_meta(nn->app)) {
  if (unlikely(skb_headroom(skb) < 8)) {
   nn_dp_warn(dp, "CTRL TX on skb without headroom\n");
   goto err_free;
  }
  meta_len = 8;
  put_unaligned_be32(NFP_META_PORT_ID_CTRL, skb_push(skb, 4));
  put_unaligned_be32(NFP_NET_META_PORTID, skb_push(skb, 4));
 }


 dma_addr = dma_map_single(dp->dev, skb->data, skb_headlen(skb),
      DMA_TO_DEVICE);
 if (dma_mapping_error(dp->dev, dma_addr))
  goto err_dma_warn;

 wr_idx = D_IDX(tx_ring, tx_ring->wr_p);


 txbuf = &tx_ring->txbufs[wr_idx];
 txbuf->skb = skb;
 txbuf->dma_addr = dma_addr;
 txbuf->fidx = -1;
 txbuf->pkt_cnt = 1;
 txbuf->real_len = real_len;


 txd = &tx_ring->txds[wr_idx];
 txd->offset_eop = meta_len | PCIE_DESC_TX_EOP;
 txd->dma_len = cpu_to_le16(skb_headlen(skb));
 nfp_desc_set_dma_addr(txd, dma_addr);
 txd->data_len = cpu_to_le16(skb->len);

 txd->flags = 0;
 txd->mss = 0;
 txd->lso_hdrlen = 0;

 tx_ring->wr_p++;
 tx_ring->wr_ptr_add++;
 nfp_net_tx_xmit_more_flush(tx_ring);

 return 0;

err_dma_warn:
 nn_dp_warn(dp, "Failed to DMA map TX CTRL buffer\n");
err_free:
 u64_stats_update_begin(&r_vec->tx_sync);
 r_vec->tx_errors++;
 u64_stats_update_end(&r_vec->tx_sync);
 dev_kfree_skb_any(skb);
 return 0;
}
