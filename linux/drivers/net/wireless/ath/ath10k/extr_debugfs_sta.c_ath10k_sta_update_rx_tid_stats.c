
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int addr2; int frame_control; } ;
struct ath10k_sta_tid_stats {unsigned long rx_pkt_from_fw; unsigned long rx_pkt_unchained; unsigned long rx_pkt_drop_chained; unsigned long rx_pkt_drop_filter; unsigned long* rx_pkt_err; unsigned long rx_pkt_queued_for_mac; } ;
struct ath10k_sta {struct ath10k_sta_tid_stats* tid_stats; } ;
struct ath10k {int sta_tid_stats_mask; int data_lock; int hw; } ;
typedef enum ath10k_pkt_rx_err { ____Placeholder_ath10k_pkt_rx_err } ath10k_pkt_rx_err ;


 int ATH10K_PKT_RX_ERR_MAX ;
 int BIT (size_t) ;
 size_t IEEE80211_NUM_TIDS ;
 size_t IEEE80211_QOS_CTL_TID_MASK ;
 int ath10k_rx_stats_update_amsdu_subfrm (struct ath10k*,struct ath10k_sta_tid_stats*,unsigned long) ;
 struct ieee80211_sta* ieee80211_find_sta_by_ifaddr (int ,int ,int *) ;
 size_t* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath10k_sta_update_rx_tid_stats(struct ath10k *ar, u8 *first_hdr,
        unsigned long num_msdus,
        enum ath10k_pkt_rx_err err,
        unsigned long unchain_cnt,
        unsigned long drop_cnt,
        unsigned long drop_cnt_filter,
        unsigned long queued_msdus)
{
 struct ieee80211_sta *sta;
 struct ath10k_sta *arsta;
 struct ieee80211_hdr *hdr;
 struct ath10k_sta_tid_stats *stats;
 u8 tid = IEEE80211_NUM_TIDS;
 bool non_data_frm = 0;

 hdr = (struct ieee80211_hdr *)first_hdr;
 if (!ieee80211_is_data(hdr->frame_control))
  non_data_frm = 1;

 if (ieee80211_is_data_qos(hdr->frame_control))
  tid = *ieee80211_get_qos_ctl(hdr) & IEEE80211_QOS_CTL_TID_MASK;

 if (!(ar->sta_tid_stats_mask & BIT(tid)) || non_data_frm)
  return;

 rcu_read_lock();

 sta = ieee80211_find_sta_by_ifaddr(ar->hw, hdr->addr2, ((void*)0));
 if (!sta)
  goto exit;

 arsta = (struct ath10k_sta *)sta->drv_priv;

 spin_lock_bh(&ar->data_lock);
 stats = &arsta->tid_stats[tid];
 stats->rx_pkt_from_fw += num_msdus;
 stats->rx_pkt_unchained += unchain_cnt;
 stats->rx_pkt_drop_chained += drop_cnt;
 stats->rx_pkt_drop_filter += drop_cnt_filter;
 if (err != ATH10K_PKT_RX_ERR_MAX)
  stats->rx_pkt_err[err] += queued_msdus;
 stats->rx_pkt_queued_for_mac += queued_msdus;
 ath10k_rx_stats_update_amsdu_subfrm(ar, &arsta->tid_stats[tid],
         num_msdus);
 spin_unlock_bh(&ar->data_lock);

exit:
 rcu_read_unlock();
}
