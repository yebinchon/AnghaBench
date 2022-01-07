
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_scan_info {int aborted; } ;
struct TYPE_2__ {int state; int completed; int timeout; int roc_freq; int roc_notify; int is_roc; } ;
struct ath10k {TYPE_1__ scan; int * scan_channel; int hw; int data_lock; } ;






 int ath10k_offchan_tx_purge (struct ath10k*) ;
 int cancel_delayed_work (int *) ;
 int complete (int *) ;
 int ieee80211_remain_on_channel_expired (int ) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int lockdep_assert_held (int *) ;

void __ath10k_scan_finish(struct ath10k *ar)
{
 lockdep_assert_held(&ar->data_lock);

 switch (ar->scan.state) {
 case 130:
  break;
 case 129:
 case 131:
  if (!ar->scan.is_roc) {
   struct cfg80211_scan_info info = {
    .aborted = (ar->scan.state ==
         131),
   };

   ieee80211_scan_completed(ar->hw, &info);
  } else if (ar->scan.roc_notify) {
   ieee80211_remain_on_channel_expired(ar->hw);
  }

 case 128:
  ar->scan.state = 130;
  ar->scan_channel = ((void*)0);
  ar->scan.roc_freq = 0;
  ath10k_offchan_tx_purge(ar);
  cancel_delayed_work(&ar->scan.timeout);
  complete(&ar->scan.completed);
  break;
 }
}
