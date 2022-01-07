
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_chainmask; int tx_chainmask; } ;
struct ath_hw {int enabled_cals; int ah_flags; int rxchainmask; int txchainmask; TYPE_1__ caps; } ;
struct ath9k_channel {int dummy; } ;


 int AH_FASTCC ;
 int AR9300_MAX_CHAINS ;
 int AR_PHY_ACTIVE ;
 int AR_PHY_ACTIVE_DIS ;
 int AR_PHY_ACTIVE_EN ;
 int AR_PHY_CL_CAL_CTL ;
 int AR_PHY_CL_CAL_ENABLE ;
 int AR_PHY_TX_IQCAL_CONTROL_0 ;
 int AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ;
 int AR_PHY_TX_IQCAL_CONTROL_1 ;
 int AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 int DELPT ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HALF_RATE (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (struct ath9k_channel*) ;
 int MAXIQCAL ;
 scalar_t__ REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int TX_CL_CAL ;
 int TX_IQ_ON_AGC_CAL ;
 int ar9003_hw_dynamic_osdac_selection (struct ath_hw*,int) ;
 int ar9003_hw_init_cal_common (struct ath_hw*) ;
 int ar9003_hw_manual_peak_cal (struct ath_hw*,int,scalar_t__) ;
 int ar9003_hw_set_chain_masks (struct ath_hw*,int,int ) ;
 int ar9003_hw_tx_iq_cal_post_proc (struct ath_hw*,int,int) ;
 int ar9003_hw_tx_iq_cal_run (struct ath_hw*) ;
 int do_ar9003_agc_cal (struct ath_hw*) ;
 int udelay (int) ;

__attribute__((used)) static bool ar9003_hw_init_cal_soc(struct ath_hw *ah,
       struct ath9k_channel *chan)
{
 bool txiqcal_done = 0;
 bool status = 1;
 bool run_agc_cal = 0, sep_iq_cal = 0;
 int i = 0;


 ar9003_hw_set_chain_masks(ah, ah->caps.rx_chainmask, ah->caps.tx_chainmask);

 if (ah->enabled_cals & TX_CL_CAL) {
  REG_SET_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
  run_agc_cal = 1;
 }

 if (IS_CHAN_HALF_RATE(chan) || IS_CHAN_QUARTER_RATE(chan))
  goto skip_tx_iqcal;


 REG_RMW_FIELD(ah, AR_PHY_TX_IQCAL_CONTROL_1,
        AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT,
        DELPT);





 if (ah->enabled_cals & TX_IQ_ON_AGC_CAL) {
  if (REG_READ_FIELD(ah, AR_PHY_TX_IQCAL_CONTROL_0,
       AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL)) {
    txiqcal_done = 1;
  } else {
   txiqcal_done = 0;
  }
  run_agc_cal = 1;
 } else {
  sep_iq_cal = 1;
  run_agc_cal = 1;
 }




 if (sep_iq_cal) {
  txiqcal_done = ar9003_hw_tx_iq_cal_run(ah);
  REG_WRITE(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_DIS);
  udelay(5);
  REG_WRITE(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);
 }

 if (AR_SREV_9550(ah) && IS_CHAN_2GHZ(chan)) {
  if (!ar9003_hw_dynamic_osdac_selection(ah, txiqcal_done))
   return 0;
 }

skip_tx_iqcal:
 if (run_agc_cal || !(ah->ah_flags & AH_FASTCC)) {
  for (i = 0; i < AR9300_MAX_CHAINS; i++) {
   if (!(ah->rxchainmask & (1 << i)))
    continue;

   ar9003_hw_manual_peak_cal(ah, i,
        IS_CHAN_2GHZ(chan));
  }
  if (!AR_SREV_9550(ah)) {
   status = do_ar9003_agc_cal(ah);
   if (!status)
    return 0;

   if (txiqcal_done)
    ar9003_hw_tx_iq_cal_post_proc(ah, 0, 0);
  } else {
   if (!txiqcal_done) {
    status = do_ar9003_agc_cal(ah);
    if (!status)
     return 0;
   } else {
    for (i = 0; i < MAXIQCAL; i++) {
     status = do_ar9003_agc_cal(ah);
     if (!status)
      return 0;
     ar9003_hw_tx_iq_cal_post_proc(ah, i, 0);
    }
   }
  }
 }


 ar9003_hw_set_chain_masks(ah, ah->rxchainmask, ah->txchainmask);

 ar9003_hw_init_cal_common(ah);

 return 1;
}
