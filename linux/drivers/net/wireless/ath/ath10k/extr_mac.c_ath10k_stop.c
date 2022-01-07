
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_2__ {int timeout; } ;
struct ath10k {scalar_t__ state; int restart_work; TYPE_1__ scan; int set_coverage_class_work; int conf_mutex; } ;


 scalar_t__ ATH10K_STATE_OFF ;
 int ath10k_drain_tx (struct ath10k*) ;
 int ath10k_halt (struct ath10k*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath10k_stop(struct ieee80211_hw *hw)
{
 struct ath10k *ar = hw->priv;

 ath10k_drain_tx(ar);

 mutex_lock(&ar->conf_mutex);
 if (ar->state != ATH10K_STATE_OFF) {
  ath10k_halt(ar);
  ar->state = ATH10K_STATE_OFF;
 }
 mutex_unlock(&ar->conf_mutex);

 cancel_work_sync(&ar->set_coverage_class_work);
 cancel_delayed_work_sync(&ar->scan.timeout);
 cancel_work_sync(&ar->restart_work);
}
