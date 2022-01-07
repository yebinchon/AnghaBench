
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chan_centers {int synth_center; } ;
struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* get_spur_channel ) (struct ath_hw*,int,int) ;} ;


 int AR_BASE_FREQ_2GHZ ;
 int AR_BASE_FREQ_5GHZ ;
 int AR_EEPROM_MODAL_SPURS ;
 int AR_NO_SPUR ;
 int AR_PHY_FORCE_CLKEN_CCK ;
 int AR_PHY_FORCE_CLKEN_CCK_MRC_MUX ;
 int AR_PHY_SFCORR_EXT ;
 int AR_PHY_SFCORR_SPUR_SUBCHNL_SD_S ;
 int AR_PHY_SPUR_REG ;
 int AR_PHY_SPUR_REG_ENABLE_MASK_PPM ;
 int AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI ;
 int AR_PHY_SPUR_REG_MASK_RATE_CNTL ;
 int AR_PHY_SPUR_REG_MASK_RATE_SELECT ;
 int AR_PHY_SPUR_REG_SPUR_RSSI_THRESH ;
 int AR_PHY_TIMING11 ;
 int AR_PHY_TIMING11_SPUR_DELTA_PHASE ;
 int AR_PHY_TIMING11_SPUR_FREQ_SD ;
 int AR_PHY_TIMING11_USE_SPUR_IN_AGC ;
 int AR_PHY_TIMING_CTRL4 (int ) ;
 int AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK ;
 int AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK ;
 int AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER ;
 int AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI ;
 int AR_SPUR_FEEQ_BOUND_HT20 ;
 int AR_SPUR_FEEQ_BOUND_HT40 ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int SM (int,int) ;
 int SPUR_RSSI_THRESH ;
 int ar5008_hw_cmn_spur_mitigate (struct ath_hw*,struct ath9k_channel*,int) ;
 int ath9k_hw_get_channel_centers (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ;
 int stub1 (struct ath_hw*,int,int) ;

__attribute__((used)) static void ar9002_hw_spur_mitigate(struct ath_hw *ah,
        struct ath9k_channel *chan)
{
 int bb_spur = AR_NO_SPUR;
 int freq;
 int bin;
 int bb_spur_off, spur_subchannel_sd;
 int spur_freq_sd;
 int spur_delta_phase;
 int denominator;
 int tmp, newVal;
 int i;
 struct chan_centers centers;

 int cur_bb_spur;
 bool is2GHz = IS_CHAN_2GHZ(chan);

 ath9k_hw_get_channel_centers(ah, chan, &centers);
 freq = centers.synth_center;

 for (i = 0; i < AR_EEPROM_MODAL_SPURS; i++) {
  cur_bb_spur = ah->eep_ops->get_spur_channel(ah, i, is2GHz);

  if (AR_NO_SPUR == cur_bb_spur)
   break;

  if (is2GHz)
   cur_bb_spur = (cur_bb_spur / 10) + AR_BASE_FREQ_2GHZ;
  else
   cur_bb_spur = (cur_bb_spur / 10) + AR_BASE_FREQ_5GHZ;

  cur_bb_spur = cur_bb_spur - freq;

  if (IS_CHAN_HT40(chan)) {
   if ((cur_bb_spur > -AR_SPUR_FEEQ_BOUND_HT40) &&
       (cur_bb_spur < AR_SPUR_FEEQ_BOUND_HT40)) {
    bb_spur = cur_bb_spur;
    break;
   }
  } else if ((cur_bb_spur > -AR_SPUR_FEEQ_BOUND_HT20) &&
      (cur_bb_spur < AR_SPUR_FEEQ_BOUND_HT20)) {
   bb_spur = cur_bb_spur;
   break;
  }
 }

 if (AR_NO_SPUR == bb_spur) {
  REG_CLR_BIT(ah, AR_PHY_FORCE_CLKEN_CCK,
       AR_PHY_FORCE_CLKEN_CCK_MRC_MUX);
  return;
 } else {
  REG_CLR_BIT(ah, AR_PHY_FORCE_CLKEN_CCK,
       AR_PHY_FORCE_CLKEN_CCK_MRC_MUX);
 }

 bin = bb_spur * 320;

 tmp = REG_READ(ah, AR_PHY_TIMING_CTRL4(0));

 ENABLE_REGWRITE_BUFFER(ah);

 newVal = tmp | (AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI |
   AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER |
   AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK |
   AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK);
 REG_WRITE(ah, AR_PHY_TIMING_CTRL4(0), newVal);

 newVal = (AR_PHY_SPUR_REG_MASK_RATE_CNTL |
    AR_PHY_SPUR_REG_ENABLE_MASK_PPM |
    AR_PHY_SPUR_REG_MASK_RATE_SELECT |
    AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI |
    SM(SPUR_RSSI_THRESH, AR_PHY_SPUR_REG_SPUR_RSSI_THRESH));
 REG_WRITE(ah, AR_PHY_SPUR_REG, newVal);

 if (IS_CHAN_HT40(chan)) {
  if (bb_spur < 0) {
   spur_subchannel_sd = 1;
   bb_spur_off = bb_spur + 10;
  } else {
   spur_subchannel_sd = 0;
   bb_spur_off = bb_spur - 10;
  }
 } else {
  spur_subchannel_sd = 0;
  bb_spur_off = bb_spur;
 }

 if (IS_CHAN_HT40(chan))
  spur_delta_phase =
   ((bb_spur * 262144) /
    10) & AR_PHY_TIMING11_SPUR_DELTA_PHASE;
 else
  spur_delta_phase =
   ((bb_spur * 524288) /
    10) & AR_PHY_TIMING11_SPUR_DELTA_PHASE;

 denominator = IS_CHAN_2GHZ(chan) ? 44 : 40;
 spur_freq_sd = ((bb_spur_off * 2048) / denominator) & 0x3ff;

 newVal = (AR_PHY_TIMING11_USE_SPUR_IN_AGC |
    SM(spur_freq_sd, AR_PHY_TIMING11_SPUR_FREQ_SD) |
    SM(spur_delta_phase, AR_PHY_TIMING11_SPUR_DELTA_PHASE));
 REG_WRITE(ah, AR_PHY_TIMING11, newVal);

 newVal = spur_subchannel_sd << AR_PHY_SFCORR_SPUR_SUBCHNL_SD_S;
 REG_WRITE(ah, AR_PHY_SFCORR_EXT, newVal);

 ar5008_hw_cmn_spur_mitigate(ah, chan, bin);

 REGWRITE_BUFFER_FLUSH(ah);
}
