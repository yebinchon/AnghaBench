
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_status {int freq; } ;
struct ath10k {int dev_flags; } ;


 int ATH10K_CAC_RUNNING ;
 int ATH10K_DBG_HTT ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ath10k_htt_rx_amsdu_allowed(struct ath10k *ar,
     struct sk_buff_head *amsdu,
     struct ieee80211_rx_status *rx_status)
{




 if (!rx_status->freq) {
  ath10k_dbg(ar, ATH10K_DBG_HTT, "no channel configured; ignoring frame(s)!\n");
  return 0;
 }

 if (test_bit(ATH10K_CAC_RUNNING, &ar->dev_flags)) {
  ath10k_dbg(ar, ATH10K_DBG_HTT, "htt rx cac running\n");
  return 0;
 }

 return 1;
}
