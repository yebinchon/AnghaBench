
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {size_t priority; } ;
struct netdev_queue {int dummy; } ;
struct mwifiex_txinfo {int flags; scalar_t__ pkt_len; int bss_type; int bss_num; } ;
struct TYPE_2__ {int tx_errors; int tx_bytes; int tx_packets; } ;
struct mwifiex_private {int netdev; int * wmm_tx_pending; TYPE_1__ stats; scalar_t__ tx_timeout_cnt; } ;
struct mwifiex_adapter {int tx_pending; int pending_bridged_pkts; } ;


 int DATA ;
 scalar_t__ LOW_TX_PENDING ;
 int MWIFIEX_BUF_FLAG_AGGR_PKT ;
 int MWIFIEX_BUF_FLAG_BRIDGED_PKT ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int* mwifiex_1d_to_wmm_queue ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int) ;
 struct mwifiex_private* mwifiex_get_priv_by_id (struct mwifiex_adapter*,int ,int ) ;
 int mwifiex_set_trans_start (int ) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;

int mwifiex_write_data_complete(struct mwifiex_adapter *adapter,
    struct sk_buff *skb, int aggr, int status)
{
 struct mwifiex_private *priv;
 struct mwifiex_txinfo *tx_info;
 struct netdev_queue *txq;
 int index;

 if (!skb)
  return 0;

 tx_info = MWIFIEX_SKB_TXCB(skb);
 priv = mwifiex_get_priv_by_id(adapter, tx_info->bss_num,
          tx_info->bss_type);
 if (!priv)
  goto done;

 mwifiex_set_trans_start(priv->netdev);

 if (tx_info->flags & MWIFIEX_BUF_FLAG_BRIDGED_PKT)
  atomic_dec_return(&adapter->pending_bridged_pkts);

 if (tx_info->flags & MWIFIEX_BUF_FLAG_AGGR_PKT)
  goto done;

 if (!status) {
  priv->stats.tx_packets++;
  priv->stats.tx_bytes += tx_info->pkt_len;
  if (priv->tx_timeout_cnt)
   priv->tx_timeout_cnt = 0;
 } else {
  priv->stats.tx_errors++;
 }

 if (aggr)

  goto done;

 atomic_dec(&adapter->tx_pending);

 index = mwifiex_1d_to_wmm_queue[skb->priority];
 if (atomic_dec_return(&priv->wmm_tx_pending[index]) < LOW_TX_PENDING) {
  txq = netdev_get_tx_queue(priv->netdev, index);
  if (netif_tx_queue_stopped(txq)) {
   netif_tx_wake_queue(txq);
   mwifiex_dbg(adapter, DATA, "wake queue: %d\n", index);
  }
 }
done:
 dev_kfree_skb_any(skb);

 return 0;
}
