
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfp_net_rx_ring {struct nfp_net_rx_buf* rxbufs; int rd_p; struct nfp_net_rx_desc* rxds; } ;
struct TYPE_2__ {int meta_len_dd; int data_len; } ;
struct nfp_net_rx_desc {TYPE_1__ rxd; } ;
struct nfp_net_rx_buf {scalar_t__ dma_addr; scalar_t__ frag; } ;
struct nfp_net_r_vector {unsigned int rx_bytes; int rx_sync; int rx_pkts; } ;
struct nfp_net_dp {unsigned int rx_dma_off; scalar_t__ rx_offset; int fl_bufsz; } ;
struct nfp_net {int app; } ;
typedef int dma_addr_t ;


 int D_IDX (struct nfp_net_rx_ring*,int ) ;
 scalar_t__ NFP_NET_CFG_RX_OFFSET_DYNAMIC ;
 unsigned int NFP_NET_RX_BUF_HEADROOM ;
 int PCIE_DESC_RX_DD ;
 unsigned int PCIE_DESC_RX_META_LEN_MASK ;
 struct sk_buff* build_skb (scalar_t__,int ) ;
 int dma_rmb () ;
 unsigned int le16_to_cpu (int ) ;
 int nfp_app_ctrl_rx (int ,struct sk_buff*) ;
 int nfp_ctrl_meta_ok (struct nfp_net*,scalar_t__,unsigned int) ;
 int nfp_net_dma_sync_cpu_rx (struct nfp_net_dp*,scalar_t__,unsigned int) ;
 int nfp_net_dma_unmap_rx (struct nfp_net_dp*,scalar_t__) ;
 void* nfp_net_napi_alloc_one (struct nfp_net_dp*,int *) ;
 int nfp_net_rx_drop (struct nfp_net_dp*,struct nfp_net_r_vector*,struct nfp_net_rx_ring*,struct nfp_net_rx_buf*,struct sk_buff*) ;
 int nfp_net_rx_give_one (struct nfp_net_dp*,struct nfp_net_rx_ring*,void*,int ) ;
 int nn_dp_warn (struct nfp_net_dp*,char*,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
nfp_ctrl_rx_one(struct nfp_net *nn, struct nfp_net_dp *dp,
  struct nfp_net_r_vector *r_vec, struct nfp_net_rx_ring *rx_ring)
{
 unsigned int meta_len, data_len, meta_off, pkt_len, pkt_off;
 struct nfp_net_rx_buf *rxbuf;
 struct nfp_net_rx_desc *rxd;
 dma_addr_t new_dma_addr;
 struct sk_buff *skb;
 void *new_frag;
 int idx;

 idx = D_IDX(rx_ring, rx_ring->rd_p);

 rxd = &rx_ring->rxds[idx];
 if (!(rxd->rxd.meta_len_dd & PCIE_DESC_RX_DD))
  return 0;




 dma_rmb();

 rx_ring->rd_p++;

 rxbuf = &rx_ring->rxbufs[idx];
 meta_len = rxd->rxd.meta_len_dd & PCIE_DESC_RX_META_LEN_MASK;
 data_len = le16_to_cpu(rxd->rxd.data_len);
 pkt_len = data_len - meta_len;

 pkt_off = NFP_NET_RX_BUF_HEADROOM + dp->rx_dma_off;
 if (dp->rx_offset == NFP_NET_CFG_RX_OFFSET_DYNAMIC)
  pkt_off += meta_len;
 else
  pkt_off += dp->rx_offset;
 meta_off = pkt_off - meta_len;


 u64_stats_update_begin(&r_vec->rx_sync);
 r_vec->rx_pkts++;
 r_vec->rx_bytes += pkt_len;
 u64_stats_update_end(&r_vec->rx_sync);

 nfp_net_dma_sync_cpu_rx(dp, rxbuf->dma_addr + meta_off, data_len);

 if (unlikely(!nfp_ctrl_meta_ok(nn, rxbuf->frag + meta_off, meta_len))) {
  nn_dp_warn(dp, "incorrect metadata for ctrl packet (%d)\n",
      meta_len);
  nfp_net_rx_drop(dp, r_vec, rx_ring, rxbuf, ((void*)0));
  return 1;
 }

 skb = build_skb(rxbuf->frag, dp->fl_bufsz);
 if (unlikely(!skb)) {
  nfp_net_rx_drop(dp, r_vec, rx_ring, rxbuf, ((void*)0));
  return 1;
 }
 new_frag = nfp_net_napi_alloc_one(dp, &new_dma_addr);
 if (unlikely(!new_frag)) {
  nfp_net_rx_drop(dp, r_vec, rx_ring, rxbuf, skb);
  return 1;
 }

 nfp_net_dma_unmap_rx(dp, rxbuf->dma_addr);

 nfp_net_rx_give_one(dp, rx_ring, new_frag, new_dma_addr);

 skb_reserve(skb, pkt_off);
 skb_put(skb, pkt_len);

 nfp_app_ctrl_rx(nn->app, skb);

 return 1;
}
