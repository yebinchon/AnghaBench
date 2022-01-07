
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {int tx_complete_work; int status; int lock; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*) ;
 int ATH5K_DEBUG_RESET ;
 int ATH_STAT_INVALID ;
 int ATH_STAT_STARTED ;
 int ath5k_hw_on_hold (struct ath5k_hw*) ;
 int ath5k_modparam_no_hw_rfkill_switch ;
 int ath5k_rfkill_hw_stop (struct ath5k_hw*) ;
 int ath5k_stop_locked (struct ath5k_hw*) ;
 int ath5k_stop_tasklets (struct ath5k_hw*) ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int ) ;

void ath5k_stop(struct ieee80211_hw *hw)
{
 struct ath5k_hw *ah = hw->priv;
 int ret;

 mutex_lock(&ah->lock);
 ret = ath5k_stop_locked(ah);
 if (ret == 0 && !test_bit(ATH_STAT_INVALID, ah->status)) {
  ret = ath5k_hw_on_hold(ah);

  ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
    "putting device to sleep\n");
 }

 mutex_unlock(&ah->lock);

 ath5k_stop_tasklets(ah);

 clear_bit(ATH_STAT_STARTED, ah->status);
 cancel_delayed_work_sync(&ah->tx_complete_work);

 if (!ath5k_modparam_no_hw_rfkill_switch)
  ath5k_rfkill_hw_stop(ah);
}
