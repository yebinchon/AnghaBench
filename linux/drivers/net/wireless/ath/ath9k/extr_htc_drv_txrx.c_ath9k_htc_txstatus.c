
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_event_txstatus {int cnt; struct __wmi_event_txstatus* txstatus; } ;
struct sk_buff {int dummy; } ;
struct ath9k_htc_tx_event {int list; int txs; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct __wmi_event_txstatus {int dummy; } ;
struct TYPE_2__ {int event_lock; int pending_tx_events; } ;


 int GFP_ATOMIC ;
 int HTC_MAX_TX_STATUS ;
 int WARN_ON (int) ;
 int ath9k_htc_check_wake_queues (struct ath9k_htc_priv*) ;
 struct sk_buff* ath9k_htc_tx_get_packet (struct ath9k_htc_priv*,struct __wmi_event_txstatus*) ;
 int ath9k_htc_tx_process (struct ath9k_htc_priv*,struct sk_buff*,struct __wmi_event_txstatus*) ;
 struct ath9k_htc_tx_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct __wmi_event_txstatus*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ath9k_htc_txstatus(struct ath9k_htc_priv *priv, void *wmi_event)
{
 struct wmi_event_txstatus *txs = wmi_event;
 struct __wmi_event_txstatus *__txs;
 struct sk_buff *skb;
 struct ath9k_htc_tx_event *tx_pend;
 int i;

 for (i = 0; i < txs->cnt; i++) {
  WARN_ON(txs->cnt > HTC_MAX_TX_STATUS);

  __txs = &txs->txstatus[i];

  skb = ath9k_htc_tx_get_packet(priv, __txs);
  if (!skb) {




   tx_pend = kzalloc(sizeof(struct ath9k_htc_tx_event),
       GFP_ATOMIC);
   if (!tx_pend)
    continue;

   memcpy(&tx_pend->txs, __txs,
          sizeof(struct __wmi_event_txstatus));

   spin_lock(&priv->wmi->event_lock);
   list_add_tail(&tx_pend->list,
          &priv->wmi->pending_tx_events);
   spin_unlock(&priv->wmi->event_lock);

   continue;
  }

  ath9k_htc_tx_process(priv, skb, __txs);
 }


 ath9k_htc_check_wake_queues(priv);
}
