
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_2__ {int roc_notify; int timeout; } ;
struct ath10k {TYPE_1__ scan; int conf_mutex; int data_lock; } ;


 int ath10k_scan_abort (struct ath10k*) ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_cancel_remain_on_channel(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif)
{
 struct ath10k *ar = hw->priv;

 mutex_lock(&ar->conf_mutex);

 spin_lock_bh(&ar->data_lock);
 ar->scan.roc_notify = 0;
 spin_unlock_bh(&ar->data_lock);

 ath10k_scan_abort(ar);

 mutex_unlock(&ar->conf_mutex);

 cancel_delayed_work_sync(&ar->scan.timeout);

 return 0;
}
