
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_2__ {int timeout; } ;
struct ath10k {TYPE_1__ scan; int conf_mutex; } ;


 int ath10k_scan_abort (struct ath10k*) ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath10k_cancel_hw_scan(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct ath10k *ar = hw->priv;

 mutex_lock(&ar->conf_mutex);
 ath10k_scan_abort(ar);
 mutex_unlock(&ar->conf_mutex);

 cancel_delayed_work_sync(&ar->scan.timeout);
}
