
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union wil_tx_desc {int dummy; } wil_tx_desc ;
struct wil_tx_enhanced_desc {int dummy; } ;
struct TYPE_4__ {void* va; int pa; } ;
struct wil_ring {int size; size_t swtail; struct wil_ctx* ctx; TYPE_3__* va; int pa; TYPE_1__ edma_rx_swtail; scalar_t__ is_rx; } ;
struct wil_ctx {scalar_t__ skb; } ;
struct wil6210_priv {struct wil_ring* ring_tx; int mutex; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int enhanced; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;


 int dev_kfree_skb_any (scalar_t__) ;
 int dma_free_coherent (struct device*,size_t,void*,int ) ;
 int kfree (struct wil_ctx*) ;
 int lockdep_assert_held (int *) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int,...) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,size_t) ;
 int wil_move_all_rx_buff_to_free_list (struct wil6210_priv*,struct wil_ring*) ;
 int wil_ring_is_empty (struct wil_ring*) ;
 void* wil_ring_next_tail (struct wil_ring*) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;
 int wil_tx_desc_unmap_edma (struct device*,union wil_tx_desc*,struct wil_ctx*) ;

__attribute__((used)) static void wil_ring_free_edma(struct wil6210_priv *wil, struct wil_ring *ring)
{
 struct device *dev = wil_to_dev(wil);
 size_t sz;
 int ring_index = 0;

 if (!ring->va)
  return;

 sz = ring->size * sizeof(ring->va[0]);

 lockdep_assert_held(&wil->mutex);
 if (ring->is_rx) {
  wil_dbg_misc(wil, "free Rx ring [%d] 0x%p:%pad 0x%p\n",
        ring->size, ring->va,
        &ring->pa, ring->ctx);

  wil_move_all_rx_buff_to_free_list(wil, ring);
  dma_free_coherent(dev, sizeof(*ring->edma_rx_swtail.va),
      ring->edma_rx_swtail.va,
      ring->edma_rx_swtail.pa);
  goto out;
 }


 ring_index = ring - wil->ring_tx;

 wil_dbg_misc(wil, "free Tx ring %d [%d] 0x%p:%pad 0x%p\n",
       ring_index, ring->size, ring->va,
       &ring->pa, ring->ctx);

 while (!wil_ring_is_empty(ring)) {
  struct wil_ctx *ctx;

  struct wil_tx_enhanced_desc dd, *d = &dd;
  struct wil_tx_enhanced_desc *_d =
   (struct wil_tx_enhanced_desc *)
   &ring->va[ring->swtail].tx.enhanced;

  ctx = &ring->ctx[ring->swtail];
  if (!ctx) {
   wil_dbg_txrx(wil,
         "ctx(%d) was already completed\n",
         ring->swtail);
   ring->swtail = wil_ring_next_tail(ring);
   continue;
  }
  *d = *_d;
  wil_tx_desc_unmap_edma(dev, (union wil_tx_desc *)d, ctx);
  if (ctx->skb)
   dev_kfree_skb_any(ctx->skb);
  ring->swtail = wil_ring_next_tail(ring);
 }

out:
 dma_free_coherent(dev, sz, (void *)ring->va, ring->pa);
 kfree(ring->ctx);
 ring->pa = 0;
 ring->va = ((void*)0);
 ring->ctx = ((void*)0);
}
