
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wmi_event_swba {int dummy; } ;
struct wmi_cmd_hdr {int command_id; } ;
struct wmi {struct ath9k_htc_priv* drv_priv; int wmi_lock; int wmi_event_queue; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int flags; int tx_lock; } ;
struct ath9k_htc_priv {TYPE_1__ tx; int fatal_work; int hw; } ;


 int ATH9K_HTC_OP_TX_DRAIN ;



 struct sk_buff* __skb_dequeue (int *) ;
 int ath9k_htc_swba (struct ath9k_htc_priv*,struct wmi_event_swba*) ;
 int ath9k_htc_txstatus (struct ath9k_htc_priv*,void*) ;
 int be16_to_cpu (int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 void* skb_pull (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath9k_wmi_event_tasklet(unsigned long data)
{
 struct wmi *wmi = (struct wmi *)data;
 struct ath9k_htc_priv *priv = wmi->drv_priv;
 struct wmi_cmd_hdr *hdr;
 void *wmi_event;
 struct wmi_event_swba *swba;
 struct sk_buff *skb = ((void*)0);
 unsigned long flags;
 u16 cmd_id;

 do {
  spin_lock_irqsave(&wmi->wmi_lock, flags);
  skb = __skb_dequeue(&wmi->wmi_event_queue);
  if (!skb) {
   spin_unlock_irqrestore(&wmi->wmi_lock, flags);
   return;
  }
  spin_unlock_irqrestore(&wmi->wmi_lock, flags);

  hdr = (struct wmi_cmd_hdr *) skb->data;
  cmd_id = be16_to_cpu(hdr->command_id);
  wmi_event = skb_pull(skb, sizeof(struct wmi_cmd_hdr));

  switch (cmd_id) {
  case 129:
   swba = wmi_event;
   ath9k_htc_swba(priv, swba);
   break;
  case 130:
   ieee80211_queue_work(wmi->drv_priv->hw,
          &wmi->drv_priv->fatal_work);
   break;
  case 128:
   spin_lock_bh(&priv->tx.tx_lock);
   if (priv->tx.flags & ATH9K_HTC_OP_TX_DRAIN) {
    spin_unlock_bh(&priv->tx.tx_lock);
    break;
   }
   spin_unlock_bh(&priv->tx.tx_lock);

   ath9k_htc_txstatus(priv, wmi_event);
   break;
  default:
   break;
  }

  kfree_skb(skb);
 } while (1);
}
