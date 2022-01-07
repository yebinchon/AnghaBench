
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ani_poll_interval; int cck_trig_low; int cck_trig_high; int ofdm_trig_low; int ofdm_trig_high; } ;
struct ar5416AniState {int mrcCCK; int ofdmsTurn; int ofdmWeakSigDetect; int ofdmNoiseImmunityLevel; int cckNoiseImmunityLevel; int firstepLevel; int spurImmunityLevel; } ;
struct ath_hw {TYPE_1__ config; int aniperiod; struct ar5416AniState ani; } ;
struct ath_common {int dummy; } ;


 int ANI ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int ATH9K_ANI_CCK_DEF_LEVEL ;
 int ATH9K_ANI_CCK_TRIG_HIGH ;
 int ATH9K_ANI_CCK_TRIG_HIGH_OLD ;
 int ATH9K_ANI_CCK_TRIG_LOW ;
 int ATH9K_ANI_CCK_TRIG_LOW_OLD ;
 int ATH9K_ANI_FIRSTEP_LVL ;
 int ATH9K_ANI_OFDM_DEF_LEVEL ;
 int ATH9K_ANI_OFDM_TRIG_HIGH ;
 int ATH9K_ANI_OFDM_TRIG_HIGH_OLD ;
 int ATH9K_ANI_OFDM_TRIG_LOW ;
 int ATH9K_ANI_OFDM_TRIG_LOW_OLD ;
 int ATH9K_ANI_PERIOD ;
 int ATH9K_ANI_POLLINTERVAL ;
 int ATH9K_ANI_SPUR_IMMUNE_LVL ;
 int ath9k_ani_restart (struct ath_hw*) ;
 int ath9k_enable_mib_counters (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_hw_ani_init(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ar5416AniState *ani = &ah->ani;

 ath_dbg(common, ANI, "Initialize ANI\n");

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  ah->config.ofdm_trig_high = ATH9K_ANI_OFDM_TRIG_HIGH;
  ah->config.ofdm_trig_low = ATH9K_ANI_OFDM_TRIG_LOW;
  ah->config.cck_trig_high = ATH9K_ANI_CCK_TRIG_HIGH;
  ah->config.cck_trig_low = ATH9K_ANI_CCK_TRIG_LOW;
 } else {
  ah->config.ofdm_trig_high = ATH9K_ANI_OFDM_TRIG_HIGH_OLD;
  ah->config.ofdm_trig_low = ATH9K_ANI_OFDM_TRIG_LOW_OLD;
  ah->config.cck_trig_high = ATH9K_ANI_CCK_TRIG_HIGH_OLD;
  ah->config.cck_trig_low = ATH9K_ANI_CCK_TRIG_LOW_OLD;
 }

 ani->spurImmunityLevel = ATH9K_ANI_SPUR_IMMUNE_LVL;
 ani->firstepLevel = ATH9K_ANI_FIRSTEP_LVL;
 ani->mrcCCK = AR_SREV_9300_20_OR_LATER(ah) ? 1 : 0;
 ani->ofdmsTurn = 1;
 ani->ofdmWeakSigDetect = 1;
 ani->cckNoiseImmunityLevel = ATH9K_ANI_CCK_DEF_LEVEL;
 ani->ofdmNoiseImmunityLevel = ATH9K_ANI_OFDM_DEF_LEVEL;





 ah->aniperiod = ATH9K_ANI_PERIOD;
 ah->config.ani_poll_interval = ATH9K_ANI_POLLINTERVAL;

 ath9k_ani_restart(ah);
 ath9k_enable_mib_counters(ah);
}
