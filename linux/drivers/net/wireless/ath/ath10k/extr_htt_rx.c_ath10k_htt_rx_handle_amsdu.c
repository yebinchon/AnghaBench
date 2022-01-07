
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct ath10k_htt {int rx_confused; TYPE_1__ rx_ring; struct ieee80211_rx_status rx_status; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;
typedef enum ath10k_pkt_rx_err { ____Placeholder_ath10k_pkt_rx_err } ath10k_pkt_rx_err ;


 int ATH10K_PKT_RX_ERR_MAX ;
 int EIO ;
 int RX_HTT_HDR_STATUS_LEN ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int ath10k_htt_rx_amsdu_pop (struct ath10k_htt*,struct sk_buff_head*) ;
 int ath10k_htt_rx_h_enqueue (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*) ;
 int ath10k_htt_rx_h_filter (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*,unsigned long*) ;
 int ath10k_htt_rx_h_mpdu (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*,int,int *,int*) ;
 int ath10k_htt_rx_h_ppdu (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*,int) ;
 int ath10k_htt_rx_h_unchain (struct ath10k*,struct sk_buff_head*,unsigned long*,unsigned long*) ;
 int ath10k_sta_update_rx_tid_stats (struct ath10k*,int *,unsigned long,int,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 unsigned long skb_queue_len (struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_htt_rx_handle_amsdu(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 struct ieee80211_rx_status *rx_status = &htt->rx_status;
 struct sk_buff_head amsdu;
 int ret;
 unsigned long drop_cnt = 0;
 unsigned long unchain_cnt = 0;
 unsigned long drop_cnt_filter = 0;
 unsigned long msdus_to_queue, num_msdus;
 enum ath10k_pkt_rx_err err = ATH10K_PKT_RX_ERR_MAX;
 u8 first_hdr[RX_HTT_HDR_STATUS_LEN];

 __skb_queue_head_init(&amsdu);

 spin_lock_bh(&htt->rx_ring.lock);
 if (htt->rx_confused) {
  spin_unlock_bh(&htt->rx_ring.lock);
  return -EIO;
 }
 ret = ath10k_htt_rx_amsdu_pop(htt, &amsdu);
 spin_unlock_bh(&htt->rx_ring.lock);

 if (ret < 0) {
  ath10k_warn(ar, "rx ring became corrupted: %d\n", ret);
  __skb_queue_purge(&amsdu);



  htt->rx_confused = 1;
  return ret;
 }

 num_msdus = skb_queue_len(&amsdu);

 ath10k_htt_rx_h_ppdu(ar, &amsdu, rx_status, 0xffff);


 if (ret > 0)
  ath10k_htt_rx_h_unchain(ar, &amsdu, &drop_cnt, &unchain_cnt);

 ath10k_htt_rx_h_filter(ar, &amsdu, rx_status, &drop_cnt_filter);
 ath10k_htt_rx_h_mpdu(ar, &amsdu, rx_status, 1, first_hdr, &err);
 msdus_to_queue = skb_queue_len(&amsdu);
 ath10k_htt_rx_h_enqueue(ar, &amsdu, rx_status);

 ath10k_sta_update_rx_tid_stats(ar, first_hdr, num_msdus, err,
           unchain_cnt, drop_cnt, drop_cnt_filter,
           msdus_to_queue);

 return 0;
}
