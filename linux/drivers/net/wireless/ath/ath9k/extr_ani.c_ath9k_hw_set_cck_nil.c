
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct ar5416AniState {size_t cckNoiseImmunityLevel; size_t ofdmNoiseImmunityLevel; scalar_t__ firstepLevel; scalar_t__ mrcCCK; } ;
struct ath_hw {scalar_t__ opmode; struct ar5416AniState ani; } ;
struct ath_common {int dummy; } ;
struct ani_ofdm_level_entry {scalar_t__ fir_step_level; } ;
struct ani_cck_level_entry {scalar_t__ fir_step_level; scalar_t__ mrc_cck_on; } ;


 int ANI ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 int AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9561 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 size_t ATH9K_ANI_CCK_DEF_LEVEL ;
 size_t ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI ;
 int ATH9K_ANI_FIRSTEP_LEVEL ;
 int ATH9K_ANI_MRC_CCK ;
 int ATH9K_ANI_RSSI_THR_HIGH ;
 scalar_t__ ATH9K_ANI_RSSI_THR_LOW ;
 scalar_t__ BEACON_RSSI (struct ath_hw*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ath9k_hw_ani_control (struct ath_hw*,int ,scalar_t__) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t,size_t,scalar_t__,scalar_t__,int ) ;
 struct ani_cck_level_entry* cck_level_table ;
 struct ani_ofdm_level_entry* ofdm_level_table ;

__attribute__((used)) static void ath9k_hw_set_cck_nil(struct ath_hw *ah, u_int8_t immunityLevel,
     bool scan)
{
 struct ar5416AniState *aniState = &ah->ani;
 struct ath_common *common = ath9k_hw_common(ah);
 const struct ani_ofdm_level_entry *entry_ofdm;
 const struct ani_cck_level_entry *entry_cck;

 ath_dbg(common, ANI, "**** ccklevel %d=>%d, rssi=%d[lo=%d hi=%d]\n",
  aniState->cckNoiseImmunityLevel, immunityLevel,
  BEACON_RSSI(ah), ATH9K_ANI_RSSI_THR_LOW,
  ATH9K_ANI_RSSI_THR_HIGH);

 if (AR_SREV_9100(ah) && immunityLevel < ATH9K_ANI_CCK_DEF_LEVEL)
  immunityLevel = ATH9K_ANI_CCK_DEF_LEVEL;

 if (ah->opmode == NL80211_IFTYPE_STATION &&
     BEACON_RSSI(ah) <= ATH9K_ANI_RSSI_THR_LOW &&
     immunityLevel > ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI)
  immunityLevel = ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI;

 if (!scan)
  aniState->cckNoiseImmunityLevel = immunityLevel;

 entry_ofdm = &ofdm_level_table[aniState->ofdmNoiseImmunityLevel];
 entry_cck = &cck_level_table[aniState->cckNoiseImmunityLevel];

 if (aniState->firstepLevel != entry_cck->fir_step_level &&
     entry_cck->fir_step_level >= entry_ofdm->fir_step_level)
  ath9k_hw_ani_control(ah,
         ATH9K_ANI_FIRSTEP_LEVEL,
         entry_cck->fir_step_level);


 if (!AR_SREV_9300_20_OR_LATER(ah) || AR_SREV_9485(ah) ||
     AR_SREV_9565(ah) || AR_SREV_9561(ah))
  return;

 if (aniState->mrcCCK != entry_cck->mrc_cck_on)
  ath9k_hw_ani_control(ah,
         ATH9K_ANI_MRC_CCK,
         entry_cck->mrc_cck_on);
}
