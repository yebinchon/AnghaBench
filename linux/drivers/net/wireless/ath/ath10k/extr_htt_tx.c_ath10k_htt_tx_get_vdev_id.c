
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ath10k_vif {int vdev_id; } ;
struct ath10k_skb_cb {TYPE_2__* vif; } ;
struct TYPE_3__ {int vdev_id; } ;
struct ath10k {int monitor_vdev_id; scalar_t__ monitor_started; TYPE_1__ scan; } ;
struct TYPE_4__ {scalar_t__ drv_priv; } ;


 struct ath10k_skb_cb* ATH10K_SKB_CB (struct sk_buff*) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_TX_OFFCHAN ;

__attribute__((used)) static u8 ath10k_htt_tx_get_vdev_id(struct ath10k *ar, struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ath10k_skb_cb *cb = ATH10K_SKB_CB(skb);
 struct ath10k_vif *arvif;

 if (info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) {
  return ar->scan.vdev_id;
 } else if (cb->vif) {
  arvif = (void *)cb->vif->drv_priv;
  return arvif->vdev_id;
 } else if (ar->monitor_started) {
  return ar->monitor_vdev_id;
 } else {
  return 0;
 }
}
