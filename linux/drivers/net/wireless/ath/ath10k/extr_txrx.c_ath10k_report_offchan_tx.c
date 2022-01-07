
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ath10k {int data_lock; struct sk_buff* offchan_tx_skb; int offchan_tx_completed; } ;


 int ATH10K_DBG_HTT ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_TX_OFFCHAN ;
 int ath10k_dbg (struct ath10k*,int ,char*,struct sk_buff*) ;
 scalar_t__ ath10k_mac_tx_frm_has_freq (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int complete (int *) ;
 scalar_t__ likely (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_report_offchan_tx(struct ath10k *ar, struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 if (likely(!(info->flags & IEEE80211_TX_CTL_TX_OFFCHAN)))
  return;

 if (ath10k_mac_tx_frm_has_freq(ar))
  return;






 spin_lock_bh(&ar->data_lock);
 if (ar->offchan_tx_skb != skb) {
  ath10k_warn(ar, "completed old offchannel frame\n");
  goto out;
 }

 complete(&ar->offchan_tx_completed);
 ar->offchan_tx_skb = ((void*)0);

 ath10k_dbg(ar, ATH10K_DBG_HTT, "completed offchannel skb %pK\n", skb);
out:
 spin_unlock_bh(&ar->data_lock);
}
