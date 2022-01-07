
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int imask; scalar_t__ opmode; int block; int bhalq; scalar_t__ enable_beacon; scalar_t__ bmisscount; } ;


 int AR5K_INT_BMISS ;
 int AR5K_INT_SWBA ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int ath5k_beacon_send (struct ath5k_hw*) ;
 int ath5k_beacon_update_timers (struct ath5k_hw*,int) ;
 int ath5k_beaconq_config (struct ath5k_hw*) ;
 scalar_t__ ath5k_hw_hasveol (struct ath5k_hw*) ;
 int ath5k_hw_set_imr (struct ath5k_hw*,int) ;
 int ath5k_hw_stop_beacon_queue (struct ath5k_hw*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
ath5k_beacon_config(struct ath5k_hw *ah)
{
 spin_lock_bh(&ah->block);
 ah->bmisscount = 0;
 ah->imask &= ~(AR5K_INT_BMISS | AR5K_INT_SWBA);

 if (ah->enable_beacon) {







  ath5k_beaconq_config(ah);

  ah->imask |= AR5K_INT_SWBA;

  if (ah->opmode == NL80211_IFTYPE_ADHOC) {
   if (ath5k_hw_hasveol(ah))
    ath5k_beacon_send(ah);
  } else
   ath5k_beacon_update_timers(ah, -1);
 } else {
  ath5k_hw_stop_beacon_queue(ah, ah->bhalq);
 }

 ath5k_hw_set_imr(ah, ah->imask);
 spin_unlock_bh(&ah->block);
}
