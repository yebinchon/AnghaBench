
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ath9k_hw_capabilities {int hw_caps; } ;
struct ath_hw {int ah_flags; TYPE_2__* eep_ops; TYPE_1__* curchan; struct ath9k_hw_capabilities caps; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {scalar_t__ channelFlags; } ;
struct TYPE_4__ {int (* set_board_values ) (struct ath_hw*,struct ath9k_channel*) ;} ;
struct TYPE_3__ {scalar_t__ channelFlags; } ;


 int AH_FASTCC ;
 scalar_t__ AR_NUM_QCU ;
 int ATH9K_HW_CAP_FCC_BAND_SWITCH ;
 scalar_t__ CHANNEL_5GHZ ;
 scalar_t__ CHANNEL_HT ;
 int QUEUE ;
 int ath9k_hw_apply_txpower (struct ath_hw*,struct ath9k_channel*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_hw_fast_chan_change (struct ath_hw*,struct ath9k_channel*,scalar_t__*) ;
 int ath9k_hw_init_bb (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_init_cal (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_init_pll (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_mark_phy_inactive (struct ath_hw*) ;
 scalar_t__ ath9k_hw_numtxpending (struct ath_hw*,scalar_t__) ;
 int ath9k_hw_rf_set_freq (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_rfbus_done (struct ath_hw*) ;
 int ath9k_hw_rfbus_req (struct ath_hw*) ;
 int ath9k_hw_set_channel_regs (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_set_clockrate (struct ath_hw*) ;
 int ath9k_hw_set_delta_slope (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_spur_mitigate_freq (struct ath_hw*,struct ath9k_channel*) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__) ;
 int ath_err (struct ath_common*,char*) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*) ;
 int udelay (int) ;

__attribute__((used)) static bool ath9k_hw_channel_change(struct ath_hw *ah,
        struct ath9k_channel *chan)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_capabilities *pCap = &ah->caps;
 bool band_switch = 0, mode_diff = 0;
 u8 ini_reloaded = 0;
 u32 qnum;
 int r;

 if (pCap->hw_caps & ATH9K_HW_CAP_FCC_BAND_SWITCH) {
  u32 flags_diff = chan->channelFlags ^ ah->curchan->channelFlags;
  band_switch = !!(flags_diff & CHANNEL_5GHZ);
  mode_diff = !!(flags_diff & ~CHANNEL_HT);
 }

 for (qnum = 0; qnum < AR_NUM_QCU; qnum++) {
  if (ath9k_hw_numtxpending(ah, qnum)) {
   ath_dbg(common, QUEUE,
    "Transmit frames pending on queue %d\n", qnum);
   return 0;
  }
 }

 if (!ath9k_hw_rfbus_req(ah)) {
  ath_err(common, "Could not kill baseband RX\n");
  return 0;
 }

 if (band_switch || mode_diff) {
  ath9k_hw_mark_phy_inactive(ah);
  udelay(5);

  if (band_switch)
   ath9k_hw_init_pll(ah, chan);

  if (ath9k_hw_fast_chan_change(ah, chan, &ini_reloaded)) {
   ath_err(common, "Failed to do fast channel change\n");
   return 0;
  }
 }

 ath9k_hw_set_channel_regs(ah, chan);

 r = ath9k_hw_rf_set_freq(ah, chan);
 if (r) {
  ath_err(common, "Failed to set channel\n");
  return 0;
 }
 ath9k_hw_set_clockrate(ah);
 ath9k_hw_apply_txpower(ah, chan, 0);

 ath9k_hw_set_delta_slope(ah, chan);
 ath9k_hw_spur_mitigate_freq(ah, chan);

 if (band_switch || ini_reloaded)
  ah->eep_ops->set_board_values(ah, chan);

 ath9k_hw_init_bb(ah, chan);
 ath9k_hw_rfbus_done(ah);

 if (band_switch || ini_reloaded) {
  ah->ah_flags |= AH_FASTCC;
  ath9k_hw_init_cal(ah, chan);
  ah->ah_flags &= ~AH_FASTCC;
 }

 return 1;
}
