
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mwifiex_rxinfo {size_t bss_num; } ;
struct TYPE_2__ {int rx_dropped; } ;
struct mwifiex_private {TYPE_1__ stats; } ;
struct mwifiex_adapter {scalar_t__ hw_status; size_t priv_num; int rx_proc_lock; struct mwifiex_private** priv; int rx_pending; int rx_data_q; int tx_data_q; int tx_queued; int * curr_cmd; int cmd_timer; } ;
typedef size_t s32 ;


 int MSG ;
 scalar_t__ MWIFIEX_HW_STATUS_NOT_READY ;
 struct mwifiex_rxinfo* MWIFIEX_SKB_RXCB (struct sk_buff*) ;
 int WARN ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int mwifiex_abort_cac (struct mwifiex_private*) ;
 int mwifiex_adapter_cleanup (struct mwifiex_adapter*) ;
 int mwifiex_clean_auto_tdls (struct mwifiex_private*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_free_priv (struct mwifiex_private*) ;
 int mwifiex_recycle_cmd_node (struct mwifiex_adapter*,int *) ;
 int mwifiex_write_data_complete (struct mwifiex_adapter*,struct sk_buff*,int ,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
mwifiex_shutdown_drv(struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;
 s32 i;
 struct sk_buff *skb;


 if (adapter->hw_status == MWIFIEX_HW_STATUS_NOT_READY)
  return;


 if (adapter->curr_cmd) {
  mwifiex_dbg(adapter, WARN,
       "curr_cmd is still in processing\n");
  del_timer_sync(&adapter->cmd_timer);
  mwifiex_recycle_cmd_node(adapter, adapter->curr_cmd);
  adapter->curr_cmd = ((void*)0);
 }


 mwifiex_dbg(adapter, MSG,
      "info: shutdown mwifiex...\n");


 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i]) {
   priv = adapter->priv[i];

   mwifiex_clean_auto_tdls(priv);
   mwifiex_abort_cac(priv);
   mwifiex_free_priv(priv);
  }
 }

 atomic_set(&adapter->tx_queued, 0);
 while ((skb = skb_dequeue(&adapter->tx_data_q)))
  mwifiex_write_data_complete(adapter, skb, 0, 0);

 spin_lock_bh(&adapter->rx_proc_lock);

 while ((skb = skb_dequeue(&adapter->rx_data_q))) {
  struct mwifiex_rxinfo *rx_info = MWIFIEX_SKB_RXCB(skb);

  atomic_dec(&adapter->rx_pending);
  priv = adapter->priv[rx_info->bss_num];
  if (priv)
   priv->stats.rx_dropped++;

  dev_kfree_skb_any(skb);
 }

 spin_unlock_bh(&adapter->rx_proc_lock);

 mwifiex_adapter_cleanup(adapter);

 adapter->hw_status = MWIFIEX_HW_STATUS_NOT_READY;
}
