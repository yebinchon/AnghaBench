
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_rx_status {int freq; int band; } ;
struct ieee80211_channel {int center_freq; int band; } ;
struct htt_rx_desc {int dummy; } ;
struct ath10k {int data_lock; struct ieee80211_channel* tgt_oper_chan; struct ieee80211_channel* rx_channel; struct ieee80211_channel* scan_channel; } ;


 struct ieee80211_channel* ath10k_htt_rx_h_any_channel (struct ath10k*) ;
 struct ieee80211_channel* ath10k_htt_rx_h_peer_channel (struct ath10k*,struct htt_rx_desc*) ;
 struct ieee80211_channel* ath10k_htt_rx_h_vdev_channel (struct ath10k*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool ath10k_htt_rx_h_channel(struct ath10k *ar,
        struct ieee80211_rx_status *status,
        struct htt_rx_desc *rxd,
        u32 vdev_id)
{
 struct ieee80211_channel *ch;

 spin_lock_bh(&ar->data_lock);
 ch = ar->scan_channel;
 if (!ch)
  ch = ar->rx_channel;
 if (!ch)
  ch = ath10k_htt_rx_h_peer_channel(ar, rxd);
 if (!ch)
  ch = ath10k_htt_rx_h_vdev_channel(ar, vdev_id);
 if (!ch)
  ch = ath10k_htt_rx_h_any_channel(ar);
 if (!ch)
  ch = ar->tgt_oper_chan;
 spin_unlock_bh(&ar->data_lock);

 if (!ch)
  return 0;

 status->band = ch->band;
 status->freq = ch->center_freq;

 return 1;
}
