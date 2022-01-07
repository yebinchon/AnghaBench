
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef size_t uint ;
typedef size_t u32 ;
struct wil_ring_tx_data {scalar_t__ last_idle; int idle; int enabled; } ;
struct wil_ring {size_t swhead; size_t size; TYPE_3__* va; struct wil_ctx* ctx; int hwtail; } ;
struct wil_ctx {int nr_frags; int skb; int mapped_as; } ;
struct wil6210_vif {int bcast_ring; } ;
struct TYPE_10__ {int (* tx_desc_unmap ) (struct device*,union wil_tx_desc*,struct wil_ctx*) ;int (* tx_desc_map ) (union wil_tx_desc*,int ,int,int) ;} ;
struct wil6210_priv {TYPE_4__ txrx_ops; scalar_t__ tx_latency; int ring_idle_trsh; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct TYPE_11__ {int d0; int status; } ;
struct TYPE_7__ {int* d; } ;
typedef struct vring_tx_desc {TYPE_5__ dma; TYPE_1__ mac; } volatile vring_tx_desc ;
struct sk_buff {int len; void const* data; struct wil_ctx* cb; } ;
struct device {int dummy; } ;
typedef int skb_frag_t ;
typedef int ktime_t ;
typedef int dma_addr_t ;
struct TYPE_12__ {int nr_frags; int * frags; } ;
struct TYPE_8__ {struct vring_tx_desc volatile legacy; } ;
struct TYPE_9__ {TYPE_2__ tx; } ;


 int BIT (int ) ;
 int DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS ;
 int DMA_CFG_DESC_TX_0_CMD_EOP_POS ;
 int DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS ;
 int DMA_TO_DEVICE ;
 int DUMP_PREFIX_NONE ;
 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int ENOMEM ;
 int MAC_CFG_DESC_TX_0_MCS_EN_POS ;
 int MAC_CFG_DESC_TX_0_MCS_INDEX_POS ;
 int TX_DMA_STATUS_DU ;
 size_t WIL_BCAST_MCS0_LIMIT ;
 int dma_map_single (struct device*,void const*,int,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 scalar_t__ get_cycles () ;
 int ktime_get () ;
 int memset (struct wil_ctx*,int ,int) ;
 int skb_frag_dma_map (struct device*,int const*,int ,int,int ) ;
 int skb_frag_size (int const*) ;
 int skb_get (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_6__* skb_shinfo (struct sk_buff*) ;
 int stub1 (union wil_tx_desc*,int ,size_t,int) ;
 int stub2 (union wil_tx_desc*,int ,int,int) ;
 int stub3 (struct device*,union wil_tx_desc*,struct wil_ctx*) ;
 int trace_wil6210_tx (int,size_t,int,int) ;
 scalar_t__ unlikely (int) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,int,size_t,...) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wil_err_ratelimited (struct wil6210_priv*,char*,int,int) ;
 int wil_hex_dump_txrx (char*,int ,int,int,void const*,int,int) ;
 int wil_mapped_as_page ;
 int wil_mapped_as_single ;
 int wil_ring_advance_head (struct wil_ring*,int) ;
 int wil_ring_avail_tx (struct wil_ring*) ;
 int wil_ring_used_tx (struct wil_ring*) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;
 int wil_tx_desc_offload_setup (struct vring_tx_desc volatile*,struct sk_buff*) ;
 int wil_tx_desc_set_nr_frags (struct vring_tx_desc volatile*,int) ;
 scalar_t__ wil_val_in_range (int ,int,int) ;
 int wil_w (struct wil6210_priv*,int ,int) ;
 int wmb () ;

__attribute__((used)) static int __wil_tx_ring(struct wil6210_priv *wil, struct wil6210_vif *vif,
    struct wil_ring *ring, struct sk_buff *skb)
{
 struct device *dev = wil_to_dev(wil);
 struct vring_tx_desc dd, *d = &dd;
 volatile struct vring_tx_desc *_d;
 u32 swhead = ring->swhead;
 int avail = wil_ring_avail_tx(ring);
 int nr_frags = skb_shinfo(skb)->nr_frags;
 uint f = 0;
 int ring_index = ring - wil->ring_tx;
 struct wil_ring_tx_data *txdata = &wil->ring_tx_data[ring_index];
 uint i = swhead;
 dma_addr_t pa;
 int used;
 bool mcast = (ring_index == vif->bcast_ring);
 uint len = skb_headlen(skb);

 wil_dbg_txrx(wil, "tx_ring: %d bytes to ring %d, nr_frags %d\n",
       skb->len, ring_index, nr_frags);

 if (unlikely(!txdata->enabled))
  return -EINVAL;

 if (unlikely(avail < 1 + nr_frags)) {
  wil_err_ratelimited(wil,
        "Tx ring[%2d] full. No space for %d fragments\n",
        ring_index, 1 + nr_frags);
  return -ENOMEM;
 }
 _d = &ring->va[i].tx.legacy;

 pa = dma_map_single(dev, skb->data, skb_headlen(skb), DMA_TO_DEVICE);

 wil_dbg_txrx(wil, "Tx[%2d] skb %d bytes 0x%p -> %pad\n", ring_index,
       skb_headlen(skb), skb->data, &pa);
 wil_hex_dump_txrx("Tx ", DUMP_PREFIX_OFFSET, 16, 1,
     skb->data, skb_headlen(skb), 0);

 if (unlikely(dma_mapping_error(dev, pa)))
  return -EINVAL;
 ring->ctx[i].mapped_as = wil_mapped_as_single;

 wil->txrx_ops.tx_desc_map((union wil_tx_desc *)d, pa, len,
       ring_index);
 if (unlikely(mcast)) {
  d->mac.d[0] |= BIT(MAC_CFG_DESC_TX_0_MCS_EN_POS);
  if (unlikely(len > WIL_BCAST_MCS0_LIMIT))
   d->mac.d[0] |= (1 << MAC_CFG_DESC_TX_0_MCS_INDEX_POS);
 }

 if (unlikely(wil_tx_desc_offload_setup(d, skb))) {
  wil_err(wil, "Tx[%2d] Failed to set cksum, drop packet\n",
   ring_index);
  goto dma_error;
 }

 ring->ctx[i].nr_frags = nr_frags;
 wil_tx_desc_set_nr_frags(d, nr_frags + 1);


 for (; f < nr_frags; f++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[f];
  int len = skb_frag_size(frag);

  *_d = *d;
  wil_dbg_txrx(wil, "Tx[%2d] desc[%4d]\n", ring_index, i);
  wil_hex_dump_txrx("TxD ", DUMP_PREFIX_NONE, 32, 4,
      (const void *)d, sizeof(*d), 0);
  i = (swhead + f + 1) % ring->size;
  _d = &ring->va[i].tx.legacy;
  pa = skb_frag_dma_map(dev, frag, 0, skb_frag_size(frag),
          DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(dev, pa))) {
   wil_err(wil, "Tx[%2d] failed to map fragment\n",
    ring_index);
   goto dma_error;
  }
  ring->ctx[i].mapped_as = wil_mapped_as_page;
  wil->txrx_ops.tx_desc_map((union wil_tx_desc *)d,
        pa, len, ring_index);




  wil_tx_desc_offload_setup(d, skb);
 }

 d->dma.d0 |= BIT(DMA_CFG_DESC_TX_0_CMD_EOP_POS);
 d->dma.d0 |= BIT(DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS);
 d->dma.d0 |= BIT(DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS);
 *_d = *d;
 wil_dbg_txrx(wil, "Tx[%2d] desc[%4d]\n", ring_index, i);
 wil_hex_dump_txrx("TxD ", DUMP_PREFIX_NONE, 32, 4,
     (const void *)d, sizeof(*d), 0);





 ring->ctx[i].skb = skb_get(skb);


 used = wil_ring_used_tx(ring);
 if (wil_val_in_range(wil->ring_idle_trsh,
        used, used + nr_frags + 1)) {
  txdata->idle += get_cycles() - txdata->last_idle;
  wil_dbg_txrx(wil, "Ring[%2d] not idle %d -> %d\n",
        ring_index, used, used + nr_frags + 1);
 }






 wmb();


 wil_ring_advance_head(ring, nr_frags + 1);
 wil_dbg_txrx(wil, "Tx[%2d] swhead %d -> %d\n", ring_index, swhead,
       ring->swhead);
 trace_wil6210_tx(ring_index, swhead, skb->len, nr_frags);




 wmb();

 if (wil->tx_latency)
  *(ktime_t *)&skb->cb = ktime_get();
 else
  memset(skb->cb, 0, sizeof(ktime_t));

 wil_w(wil, ring->hwtail, ring->swhead);

 return 0;
 dma_error:

 nr_frags = f + 1;
 for (f = 0; f < nr_frags; f++) {
  struct wil_ctx *ctx;

  i = (swhead + f) % ring->size;
  ctx = &ring->ctx[i];
  _d = &ring->va[i].tx.legacy;
  *d = *_d;
  _d->dma.status = TX_DMA_STATUS_DU;
  wil->txrx_ops.tx_desc_unmap(dev,
         (union wil_tx_desc *)d,
         ctx);

  memset(ctx, 0, sizeof(*ctx));
 }

 return -EINVAL;
}
