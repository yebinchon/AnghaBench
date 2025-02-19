
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_tx_control {struct ieee80211_sta* sta; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_sta_info {int pending_frames; } ;
struct ar9170 {int hw; int tx_dropped; int * tx_pending; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IS_STARTED (struct ar9170*) ;
 int atomic_inc (int *) ;
 int carl9170_tx (struct ar9170*) ;
 int carl9170_tx_accounting (struct ar9170*,struct sk_buff*) ;
 int carl9170_tx_ampdu (struct ar9170*) ;
 int carl9170_tx_ampdu_queue (struct ar9170*,struct ieee80211_sta*,struct sk_buff*,struct ieee80211_tx_info*) ;
 int carl9170_tx_apply_rateset (struct ar9170*,struct ieee80211_tx_info*,struct sk_buff*) ;
 int carl9170_tx_get_rates (struct ar9170*,struct ieee80211_vif*,struct ieee80211_sta*,struct sk_buff*) ;
 int carl9170_tx_prepare (struct ar9170*,struct ieee80211_sta*,struct sk_buff*) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void carl9170_op_tx(struct ieee80211_hw *hw,
      struct ieee80211_tx_control *control,
      struct sk_buff *skb)
{
 struct ar9170 *ar = hw->priv;
 struct ieee80211_tx_info *info;
 struct ieee80211_sta *sta = control->sta;
 struct ieee80211_vif *vif;
 bool run;

 if (unlikely(!IS_STARTED(ar)))
  goto err_free;

 info = IEEE80211_SKB_CB(skb);
 vif = info->control.vif;

 if (unlikely(carl9170_tx_prepare(ar, sta, skb)))
  goto err_free;

 carl9170_tx_accounting(ar, skb);





 if (sta) {
  struct carl9170_sta_info *stai = (void *) sta->drv_priv;
  atomic_inc(&stai->pending_frames);
 }

 if (info->flags & IEEE80211_TX_CTL_AMPDU) {







  run = carl9170_tx_ampdu_queue(ar, sta, skb, info);
  if (run)
   carl9170_tx_ampdu(ar);

 } else {
  unsigned int queue = skb_get_queue_mapping(skb);

  carl9170_tx_get_rates(ar, vif, sta, skb);
  carl9170_tx_apply_rateset(ar, info, skb);
  skb_queue_tail(&ar->tx_pending[queue], skb);
 }

 carl9170_tx(ar);
 return;

err_free:
 ar->tx_dropped++;
 ieee80211_free_txskb(ar->hw, skb);
}
