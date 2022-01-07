
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5416AniState {scalar_t__ ofdmNoiseImmunityLevel; scalar_t__ cckNoiseImmunityLevel; scalar_t__ ofdmsTurn; } ;
struct ath_hw {struct ar5416AniState ani; } ;


 int ath9k_hw_set_cck_nil (struct ath_hw*,scalar_t__,int) ;
 int ath9k_hw_set_ofdm_nil (struct ath_hw*,scalar_t__,int) ;

__attribute__((used)) static void ath9k_hw_ani_lower_immunity(struct ath_hw *ah)
{
 struct ar5416AniState *aniState = &ah->ani;


 if (aniState->ofdmNoiseImmunityLevel > 0 &&
     (aniState->ofdmsTurn || aniState->cckNoiseImmunityLevel == 0)) {
  ath9k_hw_set_ofdm_nil(ah, aniState->ofdmNoiseImmunityLevel - 1,
          0);
  return;
 }


 if (aniState->cckNoiseImmunityLevel > 0)
  ath9k_hw_set_cck_nil(ah, aniState->cckNoiseImmunityLevel - 1,
         0);
}
