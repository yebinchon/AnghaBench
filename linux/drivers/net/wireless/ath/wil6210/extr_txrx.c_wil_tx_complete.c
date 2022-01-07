
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
typedef int u16 ;
struct wil_ring_tx_data {int last_idle; int enabled; } ;
struct wil_ring {size_t swtail; int size; TYPE_2__* va; struct wil_ctx* ctx; } ;
struct wil_net_stats {int tx_errors; int tx_bytes; int tx_packets; } ;
struct wil_ctx {int nr_frags; struct sk_buff* skb; } ;
struct wil6210_vif {int dummy; } ;
struct TYPE_9__ {int (* tx_desc_unmap ) (struct device*,union wil_tx_desc*,struct wil_ctx*) ;} ;
struct wil6210_priv {int** ring2cid_tid; int max_assoc_sta; int ring_idle_trsh; TYPE_6__* sta; TYPE_3__ txrx_ops; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct TYPE_11__ {int status; scalar_t__ error; int length; } ;
struct vring_tx_desc {TYPE_5__ dma; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; } ;
struct TYPE_10__ {int tx_errors; int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_4__ stats; } ;
struct device {int dummy; } ;
struct TYPE_12__ {struct wil_net_stats stats; } ;
struct TYPE_7__ {struct vring_tx_desc legacy; } ;
struct TYPE_8__ {TYPE_1__ tx; } ;


 int DUMP_PREFIX_NONE ;
 int ETH_P_PAE ;
 int TX_DMA_STATUS_DU ;
 scalar_t__ cpu_to_be16 (int ) ;
 int get_cycles () ;
 int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int memset (struct wil_ctx*,int ,int) ;
 int stub1 (struct device*,union wil_tx_desc*,struct wil_ctx*) ;
 int trace_wil6210_tx_done (int,size_t,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 struct net_device* vif_to_ndev (struct wil6210_vif*) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_consume_skb (struct sk_buff*,int) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,int,...) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wil_hex_dump_txrx (char*,int ,int,int,void const*,int,int) ;
 int wil_info (struct wil6210_priv*,char*,int) ;
 int wil_ring_is_empty (struct wil_ring*) ;
 size_t wil_ring_next_tail (struct wil_ring*) ;
 int wil_ring_used_tx (struct wil_ring*) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;
 int wil_tx_complete_handle_eapol (struct wil6210_vif*,struct sk_buff*) ;
 int wil_tx_latency_calc (struct wil6210_priv*,struct sk_buff*,TYPE_6__*) ;
 int wil_update_net_queues (struct wil6210_priv*,struct wil6210_vif*,struct wil_ring*,int) ;
 scalar_t__ wil_val_in_range (int ,int,int) ;
 int wmb () ;

int wil_tx_complete(struct wil6210_vif *vif, int ringid)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 struct net_device *ndev = vif_to_ndev(vif);
 struct device *dev = wil_to_dev(wil);
 struct wil_ring *vring = &wil->ring_tx[ringid];
 struct wil_ring_tx_data *txdata = &wil->ring_tx_data[ringid];
 int done = 0;
 int cid = wil->ring2cid_tid[ringid][0];
 struct wil_net_stats *stats = ((void*)0);
 volatile struct vring_tx_desc *_d;
 int used_before_complete;
 int used_new;

 if (unlikely(!vring->va)) {
  wil_err(wil, "Tx irq[%d]: vring not initialized\n", ringid);
  return 0;
 }

 if (unlikely(!txdata->enabled)) {
  wil_info(wil, "Tx irq[%d]: vring disabled\n", ringid);
  return 0;
 }

 wil_dbg_txrx(wil, "tx_complete: (%d)\n", ringid);

 used_before_complete = wil_ring_used_tx(vring);

 if (cid < wil->max_assoc_sta)
  stats = &wil->sta[cid].stats;

 while (!wil_ring_is_empty(vring)) {
  int new_swtail;
  struct wil_ctx *ctx = &vring->ctx[vring->swtail];





  int lf = (vring->swtail + ctx->nr_frags) % vring->size;


  _d = &vring->va[lf].tx.legacy;
  if (unlikely(!(_d->dma.status & TX_DMA_STATUS_DU)))
   break;

  new_swtail = (lf + 1) % vring->size;
  while (vring->swtail != new_swtail) {
   struct vring_tx_desc dd, *d = &dd;
   u16 dmalen;
   struct sk_buff *skb;

   ctx = &vring->ctx[vring->swtail];
   skb = ctx->skb;
   _d = &vring->va[vring->swtail].tx.legacy;

   *d = *_d;

   dmalen = le16_to_cpu(d->dma.length);
   trace_wil6210_tx_done(ringid, vring->swtail, dmalen,
           d->dma.error);
   wil_dbg_txrx(wil,
         "TxC[%2d][%3d] : %d bytes, status 0x%02x err 0x%02x\n",
         ringid, vring->swtail, dmalen,
         d->dma.status, d->dma.error);
   wil_hex_dump_txrx("TxCD ", DUMP_PREFIX_NONE, 32, 4,
       (const void *)d, sizeof(*d), 0);

   wil->txrx_ops.tx_desc_unmap(dev,
          (union wil_tx_desc *)d,
          ctx);

   if (skb) {
    if (likely(d->dma.error == 0)) {
     ndev->stats.tx_packets++;
     ndev->stats.tx_bytes += skb->len;
     if (stats) {
      stats->tx_packets++;
      stats->tx_bytes += skb->len;

      wil_tx_latency_calc(wil, skb,
       &wil->sta[cid]);
     }
    } else {
     ndev->stats.tx_errors++;
     if (stats)
      stats->tx_errors++;
    }

    if (skb->protocol == cpu_to_be16(ETH_P_PAE))
     wil_tx_complete_handle_eapol(vif, skb);

    wil_consume_skb(skb, d->dma.error == 0);
   }
   memset(ctx, 0, sizeof(*ctx));





   wmb();





   vring->swtail = wil_ring_next_tail(vring);
   done++;
  }
 }


 used_new = wil_ring_used_tx(vring);
 if (wil_val_in_range(wil->ring_idle_trsh,
        used_new, used_before_complete)) {
  wil_dbg_txrx(wil, "Ring[%2d] idle %d -> %d\n",
        ringid, used_before_complete, used_new);
  txdata->last_idle = get_cycles();
 }


 if (done)
  wil_update_net_queues(wil, vif, vring, 0);

 return done;
}
