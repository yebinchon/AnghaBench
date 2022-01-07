
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct chan_centers {size_t synth_center; size_t ext_center; size_t ctl_center; } ;
struct ar9300_eeprom {int* ctlIndex_2G; int* ctlIndex_5G; } ;
struct TYPE_2__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {size_t channel; } ;


 int ALL_TARGET_HT20_0_8_16 ;
 int ALL_TARGET_HT20_23 ;
 int ALL_TARGET_HT40_0_8_16 ;
 int ALL_TARGET_HT40_23 ;
 int ALL_TARGET_LEGACY_11S ;
 int ALL_TARGET_LEGACY_1L_5L ;
 int ALL_TARGET_LEGACY_54 ;
 int ALL_TARGET_LEGACY_6_24 ;
 int AR9300_NUM_CTLS_2G ;
 int AR9300_NUM_CTLS_5G ;
 size_t ARRAY_SIZE (size_t const*) ;
 size_t CTL_MODE_M ;
 size_t const EXT_ADDITIVE ;
 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 size_t MAX_RATE_POWER ;
 int REGULATORY ;
 int SD_NO_CTL ;
 size_t SUB_NUM_CTL_MODES_AT_2G_40 ;
 size_t SUB_NUM_CTL_MODES_AT_5G_40 ;
 size_t ar9003_hw_get_max_edge_power (struct ar9300_eeprom*,size_t,int,int) ;
 size_t ar9003_mci_get_max_txpower (struct ath_hw*,size_t const) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_get_channel_centers (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ;
 size_t ath9k_hw_get_scaled_power (struct ath_hw*,size_t,int) ;
 int ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t,size_t const,size_t const,size_t const,...) ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static void ar9003_hw_set_power_per_rate_table(struct ath_hw *ah,
            struct ath9k_channel *chan,
            u8 *pPwrArray, u16 cfgCtl,
            u8 antenna_reduction,
            u16 powerLimit)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ar9300_eeprom *pEepData = &ah->eeprom.ar9300_eep;
 u16 twiceMaxEdgePower;
 int i;
 u16 scaledPower = 0, minCtlPower;
 static const u16 ctlModesFor11a[] = {
  137, 129, 136, 128
 };
 static const u16 ctlModesFor11g[] = {
  135, 133, 131, 134,
  132, 130
 };
 u16 numCtlModes;
 const u16 *pCtlMode;
 u16 ctlMode, freq;
 struct chan_centers centers;
 u8 *ctlIndex;
 u8 ctlNum;
 u16 twiceMinEdgePower;
 bool is2ghz = IS_CHAN_2GHZ(chan);

 ath9k_hw_get_channel_centers(ah, chan, &centers);
 scaledPower = ath9k_hw_get_scaled_power(ah, powerLimit,
      antenna_reduction);

 if (is2ghz) {


  numCtlModes =
   ARRAY_SIZE(ctlModesFor11g) -
       SUB_NUM_CTL_MODES_AT_2G_40;
  pCtlMode = ctlModesFor11g;
  if (IS_CHAN_HT40(chan))

   numCtlModes = ARRAY_SIZE(ctlModesFor11g);
 } else {


  numCtlModes = ARRAY_SIZE(ctlModesFor11a) -
      SUB_NUM_CTL_MODES_AT_5G_40;
  pCtlMode = ctlModesFor11a;
  if (IS_CHAN_HT40(chan))

   numCtlModes = ARRAY_SIZE(ctlModesFor11a);
 }
 for (ctlMode = 0; ctlMode < numCtlModes; ctlMode++) {
  bool isHt40CtlMode = (pCtlMode[ctlMode] == 128) ||
   (pCtlMode[ctlMode] == 130);
  if (isHt40CtlMode)
   freq = centers.synth_center;
  else if (pCtlMode[ctlMode] & EXT_ADDITIVE)
   freq = centers.ext_center;
  else
   freq = centers.ctl_center;

  ath_dbg(common, REGULATORY,
   "LOOP-Mode ctlMode %d < %d, isHt40CtlMode %d, EXT_ADDITIVE %d\n",
   ctlMode, numCtlModes, isHt40CtlMode,
   (pCtlMode[ctlMode] & EXT_ADDITIVE));


  if (is2ghz) {
   ctlIndex = pEepData->ctlIndex_2G;
   ctlNum = AR9300_NUM_CTLS_2G;
  } else {
   ctlIndex = pEepData->ctlIndex_5G;
   ctlNum = AR9300_NUM_CTLS_5G;
  }

  twiceMaxEdgePower = MAX_RATE_POWER;
  for (i = 0; (i < ctlNum) && ctlIndex[i]; i++) {
   ath_dbg(common, REGULATORY,
    "LOOP-Ctlidx %d: cfgCtl 0x%2.2x pCtlMode 0x%2.2x ctlIndex 0x%2.2x chan %d\n",
    i, cfgCtl, pCtlMode[ctlMode], ctlIndex[i],
    chan->channel);






   if ((((cfgCtl & ~CTL_MODE_M) |
          (pCtlMode[ctlMode] & CTL_MODE_M)) ==
    ctlIndex[i]) ||
       (((cfgCtl & ~CTL_MODE_M) |
          (pCtlMode[ctlMode] & CTL_MODE_M)) ==
        ((ctlIndex[i] & CTL_MODE_M) |
          SD_NO_CTL))) {
    twiceMinEdgePower =
      ar9003_hw_get_max_edge_power(pEepData,
              freq, i,
              is2ghz);

    if ((cfgCtl & ~CTL_MODE_M) == SD_NO_CTL)





     twiceMaxEdgePower =
      min(twiceMaxEdgePower,
          twiceMinEdgePower);
    else {

     twiceMaxEdgePower = twiceMinEdgePower;
     break;
    }
   }
  }

  minCtlPower = (u8)min(twiceMaxEdgePower, scaledPower);

  ath_dbg(common, REGULATORY,
   "SEL-Min ctlMode %d pCtlMode %d 2xMaxEdge %d sP %d minCtlPwr %d\n",
   ctlMode, pCtlMode[ctlMode], twiceMaxEdgePower,
   scaledPower, minCtlPower);


  switch (pCtlMode[ctlMode]) {
  case 135:
   for (i = ALL_TARGET_LEGACY_1L_5L;
        i <= ALL_TARGET_LEGACY_11S; i++)
    pPwrArray[i] = (u8)min((u16)pPwrArray[i],
             minCtlPower);
   break;
  case 137:
  case 133:
   for (i = ALL_TARGET_LEGACY_6_24;
        i <= ALL_TARGET_LEGACY_54; i++)
    pPwrArray[i] = (u8)min((u16)pPwrArray[i],
             minCtlPower);
   break;
  case 129:
  case 131:
   for (i = ALL_TARGET_HT20_0_8_16;
        i <= ALL_TARGET_HT20_23; i++) {
    pPwrArray[i] = (u8)min((u16)pPwrArray[i],
             minCtlPower);
    if (ath9k_hw_mci_is_enabled(ah))
     pPwrArray[i] =
      (u8)min((u16)pPwrArray[i],
      ar9003_mci_get_max_txpower(ah,
       pCtlMode[ctlMode]));
   }
   break;
  case 128:
  case 130:
   for (i = ALL_TARGET_HT40_0_8_16;
        i <= ALL_TARGET_HT40_23; i++) {
    pPwrArray[i] = (u8)min((u16)pPwrArray[i],
             minCtlPower);
    if (ath9k_hw_mci_is_enabled(ah))
     pPwrArray[i] =
      (u8)min((u16)pPwrArray[i],
      ar9003_mci_get_max_txpower(ah,
       pCtlMode[ctlMode]));
   }
   break;
  default:
   break;
  }
 }
}
