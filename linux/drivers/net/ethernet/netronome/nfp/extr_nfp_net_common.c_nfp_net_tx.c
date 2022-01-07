
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u16 ;
struct sk_buff {unsigned int len; int data; } ;
struct nfp_net_tx_ring {int wr_p; size_t idx; int wr_ptr_add; struct nfp_net_tx_buf* txbufs; scalar_t__ cnt; struct nfp_net_tx_desc* txds; int rd_p; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_tx_desc {int offset_eop; int * vals8; void* dma_len; void* vlan; int flags; scalar_t__ lso_hdrlen; scalar_t__ mss; void* data_len; } ;
struct nfp_net_tx_buf {int fidx; int pkt_cnt; unsigned int real_len; void* dma_addr; struct sk_buff* skb; } ;
struct nfp_net_r_vector {int tx_sync; int tx_errors; int tx_gather; int tx_busy; } ;
struct nfp_net_dp {int ctrl; int dev; int netdev; struct nfp_net_tx_ring* tx_rings; } ;
struct nfp_net {struct nfp_net_dp dp; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef int skb_frag_t ;
typedef void* dma_addr_t ;
typedef int __le64 ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 int D_IDX (struct nfp_net_tx_ring*,int) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NFP_NET_CFG_CTRL_TXVLAN ;
 int PCIE_DESC_TX_EOP ;
 int PCIE_DESC_TX_VLAN ;
 scalar_t__ __netdev_tx_sent_queue (struct netdev_queue*,unsigned int,int ) ;
 void* cpu_to_le16 (unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 void* dma_map_single (int ,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_unmap_page (int ,void*,unsigned int,int ) ;
 int dma_unmap_single (int ,void*,unsigned int,int ) ;
 struct netdev_queue* netdev_get_tx_queue (int ,size_t) ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int netdev_xmit_more () ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int nfp_desc_set_dma_addr (struct nfp_net_tx_desc*,void*) ;
 int nfp_net_prep_tx_meta (struct sk_buff*,int ) ;
 struct sk_buff* nfp_net_tls_tx (struct nfp_net_dp*,struct nfp_net_r_vector*,struct sk_buff*,int *,int*) ;
 int nfp_net_tls_tx_undo (struct sk_buff*,int ) ;
 int nfp_net_tx_csum (struct nfp_net_dp*,struct nfp_net_r_vector*,struct nfp_net_tx_buf*,struct nfp_net_tx_desc*,struct sk_buff*) ;
 int nfp_net_tx_full (struct nfp_net_tx_ring*,int) ;
 scalar_t__ nfp_net_tx_ring_should_stop (struct nfp_net_tx_ring*) ;
 int nfp_net_tx_ring_stop (struct netdev_queue*,struct nfp_net_tx_ring*) ;
 int nfp_net_tx_tso (struct nfp_net_r_vector*,struct nfp_net_tx_buf*,struct nfp_net_tx_desc*,struct sk_buff*,int) ;
 int nfp_net_tx_xmit_more_flush (struct nfp_net_tx_ring*) ;
 int nn_dp_warn (struct nfp_net_dp*,char*,...) ;
 void* skb_frag_dma_map (int ,int const*,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int const*) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 unsigned int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nfp_net_tx(struct sk_buff *skb, struct net_device *netdev)
{
 struct nfp_net *nn = netdev_priv(netdev);
 const skb_frag_t *frag;
 int f, nr_frags, wr_idx, md_bytes;
 struct nfp_net_tx_ring *tx_ring;
 struct nfp_net_r_vector *r_vec;
 struct nfp_net_tx_buf *txbuf;
 struct nfp_net_tx_desc *txd;
 struct netdev_queue *nd_q;
 struct nfp_net_dp *dp;
 dma_addr_t dma_addr;
 unsigned int fsize;
 u64 tls_handle = 0;
 u16 qidx;

 dp = &nn->dp;
 qidx = skb_get_queue_mapping(skb);
 tx_ring = &dp->tx_rings[qidx];
 r_vec = tx_ring->r_vec;

 nr_frags = skb_shinfo(skb)->nr_frags;

 if (unlikely(nfp_net_tx_full(tx_ring, nr_frags + 1))) {
  nn_dp_warn(dp, "TX ring %d busy. wrp=%u rdp=%u\n",
      qidx, tx_ring->wr_p, tx_ring->rd_p);
  nd_q = netdev_get_tx_queue(dp->netdev, qidx);
  netif_tx_stop_queue(nd_q);
  nfp_net_tx_xmit_more_flush(tx_ring);
  u64_stats_update_begin(&r_vec->tx_sync);
  r_vec->tx_busy++;
  u64_stats_update_end(&r_vec->tx_sync);
  return NETDEV_TX_BUSY;
 }

 skb = nfp_net_tls_tx(dp, r_vec, skb, &tls_handle, &nr_frags);
 if (unlikely(!skb)) {
  nfp_net_tx_xmit_more_flush(tx_ring);
  return NETDEV_TX_OK;
 }

 md_bytes = nfp_net_prep_tx_meta(skb, tls_handle);
 if (unlikely(md_bytes < 0))
  goto err_flush;


 dma_addr = dma_map_single(dp->dev, skb->data, skb_headlen(skb),
      DMA_TO_DEVICE);
 if (dma_mapping_error(dp->dev, dma_addr))
  goto err_dma_err;

 wr_idx = D_IDX(tx_ring, tx_ring->wr_p);


 txbuf = &tx_ring->txbufs[wr_idx];
 txbuf->skb = skb;
 txbuf->dma_addr = dma_addr;
 txbuf->fidx = -1;
 txbuf->pkt_cnt = 1;
 txbuf->real_len = skb->len;


 txd = &tx_ring->txds[wr_idx];
 txd->offset_eop = (nr_frags ? 0 : PCIE_DESC_TX_EOP) | md_bytes;
 txd->dma_len = cpu_to_le16(skb_headlen(skb));
 nfp_desc_set_dma_addr(txd, dma_addr);
 txd->data_len = cpu_to_le16(skb->len);

 txd->flags = 0;
 txd->mss = 0;
 txd->lso_hdrlen = 0;


 nfp_net_tx_tso(r_vec, txbuf, txd, skb, md_bytes);
 nfp_net_tx_csum(dp, r_vec, txbuf, txd, skb);
 if (skb_vlan_tag_present(skb) && dp->ctrl & NFP_NET_CFG_CTRL_TXVLAN) {
  txd->flags |= PCIE_DESC_TX_VLAN;
  txd->vlan = cpu_to_le16(skb_vlan_tag_get(skb));
 }


 if (nr_frags > 0) {
  __le64 second_half;


  second_half = txd->vals8[1];

  for (f = 0; f < nr_frags; f++) {
   frag = &skb_shinfo(skb)->frags[f];
   fsize = skb_frag_size(frag);

   dma_addr = skb_frag_dma_map(dp->dev, frag, 0,
          fsize, DMA_TO_DEVICE);
   if (dma_mapping_error(dp->dev, dma_addr))
    goto err_unmap;

   wr_idx = D_IDX(tx_ring, wr_idx + 1);
   tx_ring->txbufs[wr_idx].skb = skb;
   tx_ring->txbufs[wr_idx].dma_addr = dma_addr;
   tx_ring->txbufs[wr_idx].fidx = f;

   txd = &tx_ring->txds[wr_idx];
   txd->dma_len = cpu_to_le16(fsize);
   nfp_desc_set_dma_addr(txd, dma_addr);
   txd->offset_eop = md_bytes |
    ((f == nr_frags - 1) ? PCIE_DESC_TX_EOP : 0);
   txd->vals8[1] = second_half;
  }

  u64_stats_update_begin(&r_vec->tx_sync);
  r_vec->tx_gather++;
  u64_stats_update_end(&r_vec->tx_sync);
 }

 skb_tx_timestamp(skb);

 nd_q = netdev_get_tx_queue(dp->netdev, tx_ring->idx);

 tx_ring->wr_p += nr_frags + 1;
 if (nfp_net_tx_ring_should_stop(tx_ring))
  nfp_net_tx_ring_stop(nd_q, tx_ring);

 tx_ring->wr_ptr_add += nr_frags + 1;
 if (__netdev_tx_sent_queue(nd_q, txbuf->real_len, netdev_xmit_more()))
  nfp_net_tx_xmit_more_flush(tx_ring);

 return NETDEV_TX_OK;

err_unmap:
 while (--f >= 0) {
  frag = &skb_shinfo(skb)->frags[f];
  dma_unmap_page(dp->dev, tx_ring->txbufs[wr_idx].dma_addr,
          skb_frag_size(frag), DMA_TO_DEVICE);
  tx_ring->txbufs[wr_idx].skb = ((void*)0);
  tx_ring->txbufs[wr_idx].dma_addr = 0;
  tx_ring->txbufs[wr_idx].fidx = -2;
  wr_idx = wr_idx - 1;
  if (wr_idx < 0)
   wr_idx += tx_ring->cnt;
 }
 dma_unmap_single(dp->dev, tx_ring->txbufs[wr_idx].dma_addr,
    skb_headlen(skb), DMA_TO_DEVICE);
 tx_ring->txbufs[wr_idx].skb = ((void*)0);
 tx_ring->txbufs[wr_idx].dma_addr = 0;
 tx_ring->txbufs[wr_idx].fidx = -2;
err_dma_err:
 nn_dp_warn(dp, "Failed to map DMA TX buffer\n");
err_flush:
 nfp_net_tx_xmit_more_flush(tx_ring);
 u64_stats_update_begin(&r_vec->tx_sync);
 r_vec->tx_errors++;
 u64_stats_update_end(&r_vec->tx_sync);
 nfp_net_tls_tx_undo(skb, tls_handle);
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
