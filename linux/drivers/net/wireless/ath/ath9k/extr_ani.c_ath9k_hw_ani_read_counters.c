
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int ast_ani_cckerrs; int ast_ani_ofdmerrs; int ast_ani_lneg_or_lzero; } ;
struct ar5416AniState {void* ofdmPhyErrCount; void* cckPhyErrCount; int listenTime; } ;
struct ath_hw {TYPE_1__ stats; int ah_mibStats; struct ar5416AniState ani; } ;
struct ath_common {int dummy; } ;
typedef scalar_t__ int32_t ;


 int AR_PHY_ERR_1 ;
 int AR_PHY_ERR_2 ;
 void* REG_READ (struct ath_hw*,int ) ;
 int ath9k_ani_restart (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_update_mibstats (struct ath_hw*,int *) ;
 int ath_hw_cycle_counters_update (struct ath_common*) ;
 scalar_t__ ath_hw_get_listen_time (struct ath_common*) ;

__attribute__((used)) static bool ath9k_hw_ani_read_counters(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ar5416AniState *aniState = &ah->ani;
 u32 phyCnt1, phyCnt2;
 int32_t listenTime;

 ath_hw_cycle_counters_update(common);
 listenTime = ath_hw_get_listen_time(common);

 if (listenTime <= 0) {
  ah->stats.ast_ani_lneg_or_lzero++;
  ath9k_ani_restart(ah);
  return 0;
 }

 aniState->listenTime += listenTime;

 ath9k_hw_update_mibstats(ah, &ah->ah_mibStats);

 phyCnt1 = REG_READ(ah, AR_PHY_ERR_1);
 phyCnt2 = REG_READ(ah, AR_PHY_ERR_2);

 ah->stats.ast_ani_ofdmerrs += phyCnt1 - aniState->ofdmPhyErrCount;
 aniState->ofdmPhyErrCount = phyCnt1;

 ah->stats.ast_ani_cckerrs += phyCnt2 - aniState->cckPhyErrCount;
 aniState->cckPhyErrCount = phyCnt2;

 return 1;
}
