
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct ath5k_hw {int irq; int bhalq; struct ieee80211_hw* hw; } ;


 int ath5k_desc_free (struct ath5k_hw*) ;
 int ath5k_hw_deinit (struct ath5k_hw*) ;
 int ath5k_hw_release_tx_queue (struct ath5k_hw*,int ) ;
 int ath5k_sysfs_unregister (struct ath5k_hw*) ;
 int ath5k_txq_release (struct ath5k_hw*) ;
 int ath5k_unregister_leds (struct ath5k_hw*) ;
 int free_irq (int ,struct ath5k_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;

void
ath5k_deinit_ah(struct ath5k_hw *ah)
{
 struct ieee80211_hw *hw = ah->hw;
 ieee80211_unregister_hw(hw);
 ath5k_desc_free(ah);
 ath5k_txq_release(ah);
 ath5k_hw_release_tx_queue(ah, ah->bhalq);
 ath5k_unregister_leds(ah);

 ath5k_sysfs_unregister(ah);





 ath5k_hw_deinit(ah);
 free_irq(ah->irq, ah);
}
