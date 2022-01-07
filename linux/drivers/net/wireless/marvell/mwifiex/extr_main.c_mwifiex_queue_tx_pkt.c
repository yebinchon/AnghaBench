
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {size_t priority; } ;
struct netdev_queue {int dummy; } ;
struct mwifiex_private {TYPE_1__* adapter; int netdev; int * wmm_tx_pending; } ;
struct TYPE_3__ {int tx_pending; int bypass_tx_pending; } ;


 int DATA ;
 scalar_t__ MAX_TX_PENDING ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int* mwifiex_1d_to_wmm_queue ;
 scalar_t__ mwifiex_bypass_tx_queue (struct mwifiex_private*,struct sk_buff*) ;
 int mwifiex_dbg (TYPE_1__*,int ,char*,int) ;
 int mwifiex_queue_main_work (TYPE_1__*) ;
 int mwifiex_wmm_add_buf_bypass_txqueue (struct mwifiex_private*,struct sk_buff*) ;
 int mwifiex_wmm_add_buf_txqueue (struct mwifiex_private*,struct sk_buff*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;

int mwifiex_queue_tx_pkt(struct mwifiex_private *priv, struct sk_buff *skb)
{
 struct netdev_queue *txq;
 int index = mwifiex_1d_to_wmm_queue[skb->priority];

 if (atomic_inc_return(&priv->wmm_tx_pending[index]) >= MAX_TX_PENDING) {
  txq = netdev_get_tx_queue(priv->netdev, index);
  if (!netif_tx_queue_stopped(txq)) {
   netif_tx_stop_queue(txq);
   mwifiex_dbg(priv->adapter, DATA,
        "stop queue: %d\n", index);
  }
 }

 if (mwifiex_bypass_tx_queue(priv, skb)) {
  atomic_inc(&priv->adapter->tx_pending);
  atomic_inc(&priv->adapter->bypass_tx_pending);
  mwifiex_wmm_add_buf_bypass_txqueue(priv, skb);
  } else {
  atomic_inc(&priv->adapter->tx_pending);
  mwifiex_wmm_add_buf_txqueue(priv, skb);
  }

 mwifiex_queue_main_work(priv->adapter);

 return 0;
}
