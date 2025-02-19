
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


typedef int u32 ;
struct ring_desc {int flaglen; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {struct ring_desc* orig; } ;
struct TYPE_9__ {struct ring_desc* orig; } ;
struct TYPE_8__ {int orig; } ;
struct TYPE_7__ {struct ring_desc* orig; } ;
struct fe_priv {scalar_t__ desc_ver; int tx_stop; TYPE_4__ get_tx; int dev; TYPE_5__* tx_skb; TYPE_5__* get_tx_ctx; int last_tx_ctx; TYPE_3__ tx_ring; TYPE_2__ last_tx; int swstats_tx_syncp; TYPE_1__ put_tx; } ;
struct TYPE_12__ {unsigned int len; } ;
struct TYPE_11__ {TYPE_6__* skb; } ;


 scalar_t__ DESC_VER_1 ;
 int NV_TX2_ERROR ;
 int NV_TX2_LASTPACKET ;
 int NV_TX2_RETRYCOUNT_MASK ;
 int NV_TX2_RETRYERROR ;
 int NV_TX_ERROR ;
 int NV_TX_LASTPACKET ;
 int NV_TX_RETRYCOUNT_MASK ;
 int NV_TX_RETRYERROR ;
 int NV_TX_VALID ;
 int dev_kfree_skb_any (TYPE_6__*) ;
 int le32_to_cpu (int ) ;
 int netdev_completed_queue (int ,int,unsigned int) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int nv_legacybackoff_reseed (struct net_device*) ;
 int nv_txrx_stats_add (int ,unsigned int) ;
 int nv_txrx_stats_inc (int ) ;
 int nv_unmap_txskb (struct fe_priv*,TYPE_5__*) ;
 int stat_tx_bytes ;
 int stat_tx_packets ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nv_tx_done(struct net_device *dev, int limit)
{
 struct fe_priv *np = netdev_priv(dev);
 u32 flags;
 int tx_work = 0;
 struct ring_desc *orig_get_tx = np->get_tx.orig;
 unsigned int bytes_compl = 0;

 while ((np->get_tx.orig != np->put_tx.orig) &&
        !((flags = le32_to_cpu(np->get_tx.orig->flaglen)) & NV_TX_VALID) &&
        (tx_work < limit)) {

  nv_unmap_txskb(np, np->get_tx_ctx);

  if (np->desc_ver == DESC_VER_1) {
   if (flags & NV_TX_LASTPACKET) {
    if (unlikely(flags & NV_TX_ERROR)) {
     if ((flags & NV_TX_RETRYERROR)
         && !(flags & NV_TX_RETRYCOUNT_MASK))
      nv_legacybackoff_reseed(dev);
    } else {
     unsigned int len;

     u64_stats_update_begin(&np->swstats_tx_syncp);
     nv_txrx_stats_inc(stat_tx_packets);
     len = np->get_tx_ctx->skb->len;
     nv_txrx_stats_add(stat_tx_bytes, len);
     u64_stats_update_end(&np->swstats_tx_syncp);
    }
    bytes_compl += np->get_tx_ctx->skb->len;
    dev_kfree_skb_any(np->get_tx_ctx->skb);
    np->get_tx_ctx->skb = ((void*)0);
    tx_work++;
   }
  } else {
   if (flags & NV_TX2_LASTPACKET) {
    if (unlikely(flags & NV_TX2_ERROR)) {
     if ((flags & NV_TX2_RETRYERROR)
         && !(flags & NV_TX2_RETRYCOUNT_MASK))
      nv_legacybackoff_reseed(dev);
    } else {
     unsigned int len;

     u64_stats_update_begin(&np->swstats_tx_syncp);
     nv_txrx_stats_inc(stat_tx_packets);
     len = np->get_tx_ctx->skb->len;
     nv_txrx_stats_add(stat_tx_bytes, len);
     u64_stats_update_end(&np->swstats_tx_syncp);
    }
    bytes_compl += np->get_tx_ctx->skb->len;
    dev_kfree_skb_any(np->get_tx_ctx->skb);
    np->get_tx_ctx->skb = ((void*)0);
    tx_work++;
   }
  }
  if (unlikely(np->get_tx.orig++ == np->last_tx.orig))
   np->get_tx.orig = np->tx_ring.orig;
  if (unlikely(np->get_tx_ctx++ == np->last_tx_ctx))
   np->get_tx_ctx = np->tx_skb;
 }

 netdev_completed_queue(np->dev, tx_work, bytes_compl);

 if (unlikely((np->tx_stop == 1) && (np->get_tx.orig != orig_get_tx))) {
  np->tx_stop = 0;
  netif_wake_queue(dev);
 }
 return tx_work;
}
