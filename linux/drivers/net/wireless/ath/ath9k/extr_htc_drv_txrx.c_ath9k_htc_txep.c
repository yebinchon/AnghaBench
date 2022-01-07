
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath9k_htc_tx_ctl {int txok; int timestamp; } ;
struct TYPE_2__ {struct sk_buff_head tx_failed; } ;
struct ath9k_htc_priv {int tx_failed_tasklet; TYPE_1__ tx; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 struct ath9k_htc_tx_ctl* HTC_SKB_CB (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff_head* get_htc_epid_queue (struct ath9k_htc_priv*,int) ;
 int jiffies ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

void ath9k_htc_txep(void *drv_priv, struct sk_buff *skb,
      enum htc_endpoint_id ep_id, bool txok)
{
 struct ath9k_htc_priv *priv = drv_priv;
 struct ath9k_htc_tx_ctl *tx_ctl;
 struct sk_buff_head *epid_queue;

 tx_ctl = HTC_SKB_CB(skb);
 tx_ctl->txok = txok;
 tx_ctl->timestamp = jiffies;

 if (!txok) {
  skb_queue_tail(&priv->tx.tx_failed, skb);
  tasklet_schedule(&priv->tx_failed_tasklet);
  return;
 }

 epid_queue = get_htc_epid_queue(priv, ep_id);
 if (!epid_queue) {
  dev_kfree_skb_any(skb);
  return;
 }

 skb_queue_tail(epid_queue, skb);
}
