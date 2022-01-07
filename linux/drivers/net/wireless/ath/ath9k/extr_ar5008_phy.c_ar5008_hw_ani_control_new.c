
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ast_ani_spurdown; int ast_ani_spurup; int ast_ani_stepdown; int ast_ani_stepup; int ast_ani_ofdmoff; int ast_ani_ofdmon; } ;
struct TYPE_3__ {int m1ThreshLow; int m2ThreshLow; int m1Thresh; int m2Thresh; int m2CountThr; int m2CountThrLow; int m1ThreshLowExt; int m2ThreshLowExt; int m1ThreshExt; int m2ThreshExt; int cycpwrThr1Ext; int cycpwrThr1; int firstepLow; int firstep; } ;
struct ar5416AniState {int ofdmWeakSigDetect; int firstepLevel; int spurImmunityLevel; int cckPhyErrCount; int ofdmPhyErrCount; int listenTime; scalar_t__ mrcCCK; TYPE_1__ iniDef; } ;
struct ath_hw {int ani_function; TYPE_2__ stats; struct ar5416AniState ani; struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int channel; } ;
typedef int s32 ;
typedef enum ath9k_ani_cmd { ____Placeholder_ath9k_ani_cmd } ath9k_ani_cmd ;


 int ANI ;
 int AR_PHY_EXT_CCA ;
 int AR_PHY_EXT_TIMING5_CYCPWR_THR1 ;
 int AR_PHY_FIND_SIG ;
 int AR_PHY_FIND_SIG_FIRSTEP ;
 int AR_PHY_FIND_SIG_FIRSTEP_LOW ;
 int AR_PHY_FIND_SIG_LOW ;
 int AR_PHY_SFCORR ;
 int AR_PHY_SFCORR_EXT ;
 int AR_PHY_SFCORR_EXT_M1_THRESH ;
 int AR_PHY_SFCORR_EXT_M1_THRESH_LOW ;
 int AR_PHY_SFCORR_EXT_M2_THRESH ;
 int AR_PHY_SFCORR_EXT_M2_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW ;
 int AR_PHY_SFCORR_LOW_M1_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW ;
 int AR_PHY_SFCORR_LOW_M2_THRESH_LOW ;
 int AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW ;
 int AR_PHY_SFCORR_M1_THRESH ;
 int AR_PHY_SFCORR_M2COUNT_THR ;
 int AR_PHY_SFCORR_M2_THRESH ;
 int AR_PHY_TIMING5 ;
 int AR_PHY_TIMING5_CYCPWR_THR1 ;

 int ATH9K_ANI_FIRSTEP_LVL ;


 int ATH9K_ANI_SPUR_IMMUNE_LVL ;

 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int WARN_ON (int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int,...) ;
 int m1ThreshExt_off ;
 int m1ThreshLowExt_off ;
 int m1ThreshLow_off ;
 int m1Thresh_off ;
 int m2CountThrLow_off ;
 int m2CountThr_off ;
 int m2ThreshExt_off ;
 int m2ThreshLowExt_off ;
 int m2ThreshLow_off ;
 int m2Thresh_off ;

__attribute__((used)) static bool ar5008_hw_ani_control_new(struct ath_hw *ah,
          enum ath9k_ani_cmd cmd,
          int param)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_channel *chan = ah->curchan;
 struct ar5416AniState *aniState = &ah->ani;
 s32 value;

 switch (cmd & ah->ani_function) {
 case 129:{







  u32 on = param ? 1 : 0;




  int m1ThreshLow = on ?
   aniState->iniDef.m1ThreshLow : m1ThreshLow_off;
  int m2ThreshLow = on ?
   aniState->iniDef.m2ThreshLow : m2ThreshLow_off;
  int m1Thresh = on ?
   aniState->iniDef.m1Thresh : m1Thresh_off;
  int m2Thresh = on ?
   aniState->iniDef.m2Thresh : m2Thresh_off;
  int m2CountThr = on ?
   aniState->iniDef.m2CountThr : m2CountThr_off;
  int m2CountThrLow = on ?
   aniState->iniDef.m2CountThrLow : m2CountThrLow_off;
  int m1ThreshLowExt = on ?
   aniState->iniDef.m1ThreshLowExt : m1ThreshLowExt_off;
  int m2ThreshLowExt = on ?
   aniState->iniDef.m2ThreshLowExt : m2ThreshLowExt_off;
  int m1ThreshExt = on ?
   aniState->iniDef.m1ThreshExt : m1ThreshExt_off;
  int m2ThreshExt = on ?
   aniState->iniDef.m2ThreshExt : m2ThreshExt_off;

  REG_RMW_FIELD(ah, AR_PHY_SFCORR_LOW,
         AR_PHY_SFCORR_LOW_M1_THRESH_LOW,
         m1ThreshLow);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR_LOW,
         AR_PHY_SFCORR_LOW_M2_THRESH_LOW,
         m2ThreshLow);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR,
         AR_PHY_SFCORR_M1_THRESH, m1Thresh);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR,
         AR_PHY_SFCORR_M2_THRESH, m2Thresh);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR,
         AR_PHY_SFCORR_M2COUNT_THR, m2CountThr);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR_LOW,
         AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW,
         m2CountThrLow);

  REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
         AR_PHY_SFCORR_EXT_M1_THRESH_LOW, m1ThreshLowExt);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
         AR_PHY_SFCORR_EXT_M2_THRESH_LOW, m2ThreshLowExt);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
         AR_PHY_SFCORR_EXT_M1_THRESH, m1ThreshExt);
  REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
         AR_PHY_SFCORR_EXT_M2_THRESH, m2ThreshExt);

  if (on)
   REG_SET_BIT(ah, AR_PHY_SFCORR_LOW,
        AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);
  else
   REG_CLR_BIT(ah, AR_PHY_SFCORR_LOW,
        AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW);

  if (on != aniState->ofdmWeakSigDetect) {
   ath_dbg(common, ANI,
    "** ch %d: ofdm weak signal: %s=>%s\n",
    chan->channel,
    aniState->ofdmWeakSigDetect ?
    "on" : "off",
    on ? "on" : "off");
   if (on)
    ah->stats.ast_ani_ofdmon++;
   else
    ah->stats.ast_ani_ofdmoff++;
   aniState->ofdmWeakSigDetect = on;
  }
  break;
 }
 case 131:{
  u32 level = param;

  value = level * 2;
  REG_RMW_FIELD(ah, AR_PHY_FIND_SIG,
         AR_PHY_FIND_SIG_FIRSTEP, value);
  REG_RMW_FIELD(ah, AR_PHY_FIND_SIG_LOW,
         AR_PHY_FIND_SIG_FIRSTEP_LOW, value);

  if (level != aniState->firstepLevel) {
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] firstep[level]=%d ini=%d\n",
    chan->channel,
    aniState->firstepLevel,
    level,
    ATH9K_ANI_FIRSTEP_LVL,
    value,
    aniState->iniDef.firstep);
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] firstep_low[level]=%d ini=%d\n",
    chan->channel,
    aniState->firstepLevel,
    level,
    ATH9K_ANI_FIRSTEP_LVL,
    value,
    aniState->iniDef.firstepLow);
   if (level > aniState->firstepLevel)
    ah->stats.ast_ani_stepup++;
   else if (level < aniState->firstepLevel)
    ah->stats.ast_ani_stepdown++;
   aniState->firstepLevel = level;
  }
  break;
 }
 case 128:{
  u32 level = param;

  value = (level + 1) * 2;
  REG_RMW_FIELD(ah, AR_PHY_TIMING5,
         AR_PHY_TIMING5_CYCPWR_THR1, value);

  REG_RMW_FIELD(ah, AR_PHY_EXT_CCA,
      AR_PHY_EXT_TIMING5_CYCPWR_THR1, value - 1);

  if (level != aniState->spurImmunityLevel) {
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\n",
    chan->channel,
    aniState->spurImmunityLevel,
    level,
    ATH9K_ANI_SPUR_IMMUNE_LVL,
    value,
    aniState->iniDef.cycpwrThr1);
   ath_dbg(common, ANI,
    "** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\n",
    chan->channel,
    aniState->spurImmunityLevel,
    level,
    ATH9K_ANI_SPUR_IMMUNE_LVL,
    value,
    aniState->iniDef.cycpwrThr1Ext);
   if (level > aniState->spurImmunityLevel)
    ah->stats.ast_ani_spurup++;
   else if (level < aniState->spurImmunityLevel)
    ah->stats.ast_ani_spurdown++;
   aniState->spurImmunityLevel = level;
  }
  break;
 }
 case 130:




  WARN_ON(1);
  break;
 default:
  ath_dbg(common, ANI, "invalid cmd %u\n", cmd);
  return 0;
 }

 ath_dbg(common, ANI,
  "ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\n",
  aniState->spurImmunityLevel,
  aniState->ofdmWeakSigDetect ? "on" : "off",
  aniState->firstepLevel,
  aniState->mrcCCK ? "on" : "off",
  aniState->listenTime,
  aniState->ofdmPhyErrCount,
  aniState->cckPhyErrCount);
 return 1;
}
