
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int modes_index; int txchainmask; int rxchainmask; int iniCckfirJapan2484; int iniAdditional; int iniModesFastClock; int iniModesTxGain; int ini_modes_rxgain_xlna; int ini_modes_rx_gain_bounds; int ini_modes_rxgain_bb_postamble; int ini_modes_rxgain_bb_core; int iniModesRxGain; int ini_radio_post_sys2ant; int * iniRadio; int * iniBB; int * iniMac; int * iniSOC; } ;
struct ath9k_channel {int channel; } ;


 int AR_PHY_FCAL_2_0 ;
 int AR_PHY_FLC_PWR_THRESH ;
 scalar_t__ AR_SREV_9462_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9531 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9561 (struct ath_hw*) ;
 unsigned int ATH_INI_NUM_SPLIT ;
 unsigned int ATH_INI_POST ;
 int EINVAL ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int REG_WRITE_ARRAY (int *,int,unsigned int) ;
 int ar9003_doubler_fix (struct ath_hw*) ;
 int ar9003_hw_get_rx_gain_idx (struct ath_hw*) ;
 int ar9003_hw_override_ini (struct ath_hw*) ;
 int ar9003_hw_prog_ini (struct ath_hw*,int *,int) ;
 int ar9003_hw_set_chain_masks (struct ath_hw*,int ,int ) ;
 int ar9003_hw_set_channel_regs (struct ath_hw*,struct ath9k_channel*) ;
 int ar9550_hw_get_modes_txgain_index (struct ath_hw*,struct ath9k_channel*) ;
 int ar9561_hw_get_modes_txgain_index (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_apply_txpower (struct ath_hw*,struct ath9k_channel*,int) ;

__attribute__((used)) static int ar9003_hw_process_ini(struct ath_hw *ah,
     struct ath9k_channel *chan)
{
 unsigned int regWrites = 0, i;
 u32 modesIndex;

 if (IS_CHAN_5GHZ(chan))
  modesIndex = IS_CHAN_HT40(chan) ? 2 : 1;
 else
  modesIndex = IS_CHAN_HT40(chan) ? 3 : 4;




 for (i = 0; i < ATH_INI_NUM_SPLIT; i++) {
  ar9003_hw_prog_ini(ah, &ah->iniSOC[i], modesIndex);
  ar9003_hw_prog_ini(ah, &ah->iniMac[i], modesIndex);
  ar9003_hw_prog_ini(ah, &ah->iniBB[i], modesIndex);
  ar9003_hw_prog_ini(ah, &ah->iniRadio[i], modesIndex);
  if (i == ATH_INI_POST && AR_SREV_9462_20_OR_LATER(ah))
   ar9003_hw_prog_ini(ah,
        &ah->ini_radio_post_sys2ant,
        modesIndex);
 }

 ar9003_doubler_fix(ah);




 REG_WRITE_ARRAY(&ah->iniModesRxGain, 1, regWrites);

 if (AR_SREV_9462_20_OR_LATER(ah)) {



  if (ar9003_hw_get_rx_gain_idx(ah) == 2) {
   REG_WRITE_ARRAY(&ah->ini_modes_rxgain_bb_core,
     1, regWrites);
   REG_WRITE_ARRAY(&ah->ini_modes_rxgain_bb_postamble,
     modesIndex, regWrites);
  }




  if ((ar9003_hw_get_rx_gain_idx(ah) == 2) ||
      (ar9003_hw_get_rx_gain_idx(ah) == 3)) {
   REG_WRITE_ARRAY(&ah->ini_modes_rxgain_xlna,
     modesIndex, regWrites);
  }
 }

 if (AR_SREV_9550(ah) || AR_SREV_9561(ah))
  REG_WRITE_ARRAY(&ah->ini_modes_rx_gain_bounds, modesIndex,
    regWrites);

 if (AR_SREV_9561(ah) && (ar9003_hw_get_rx_gain_idx(ah) == 0))
  REG_WRITE_ARRAY(&ah->ini_modes_rxgain_xlna,
    modesIndex, regWrites);



 if (AR_SREV_9550(ah) || AR_SREV_9531(ah) || AR_SREV_9561(ah)) {
  int modes_txgain_index = 1;

  if (AR_SREV_9550(ah))
   modes_txgain_index = ar9550_hw_get_modes_txgain_index(ah, chan);

  if (AR_SREV_9561(ah))
   modes_txgain_index =
    ar9561_hw_get_modes_txgain_index(ah, chan);

  if (modes_txgain_index < 0)
   return -EINVAL;

  REG_WRITE_ARRAY(&ah->iniModesTxGain, modes_txgain_index,
    regWrites);
 } else {
  REG_WRITE_ARRAY(&ah->iniModesTxGain, modesIndex, regWrites);
 }





 if (IS_CHAN_A_FAST_CLOCK(ah, chan))
  REG_WRITE_ARRAY(&ah->iniModesFastClock,
    modesIndex, regWrites);




 REG_WRITE_ARRAY(&ah->iniAdditional, 1, regWrites);




 if (chan->channel == 2484) {
  ar9003_hw_prog_ini(ah, &ah->iniCckfirJapan2484, 1);

  if (AR_SREV_9531(ah))
   REG_RMW_FIELD(ah, AR_PHY_FCAL_2_0,
          AR_PHY_FLC_PWR_THRESH, 0);
 }

 ah->modes_index = modesIndex;
 ar9003_hw_override_ini(ah);
 ar9003_hw_set_channel_regs(ah, chan);
 ar9003_hw_set_chain_masks(ah, ah->rxchainmask, ah->txchainmask);
 ath9k_hw_apply_txpower(ah, chan, 0);

 return 0;
}
