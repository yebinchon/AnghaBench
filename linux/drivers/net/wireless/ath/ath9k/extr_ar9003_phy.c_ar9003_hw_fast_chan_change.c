
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_hw {int modes_index; int iniCckfirJapan2484; int iniModesFastClock; int ini_modes_rxgain_bb_postamble; int ini_modes_rxgain_bb_core; int iniModesTxGain; int ini_radio_post_sys2ant; int * iniRadio; int * iniBB; int * iniMac; int * iniSOC; } ;
struct ath9k_channel {int channel; } ;


 scalar_t__ AR_SREV_9462_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9531 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 size_t ATH_INI_POST ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int REG_WRITE_ARRAY (int *,int,unsigned int) ;
 int ar9003_hw_get_rx_gain_idx (struct ath_hw*) ;
 int ar9003_hw_prog_ini (struct ath_hw*,int *,int) ;
 int ar9003_hw_set_rfmode (struct ath_hw*,struct ath9k_channel*) ;

__attribute__((used)) static int ar9003_hw_fast_chan_change(struct ath_hw *ah,
          struct ath9k_channel *chan,
          u8 *ini_reloaded)
{
 unsigned int regWrites = 0;
 u32 modesIndex, txgain_index;

 if (IS_CHAN_5GHZ(chan))
  modesIndex = IS_CHAN_HT40(chan) ? 2 : 1;
 else
  modesIndex = IS_CHAN_HT40(chan) ? 3 : 4;

 txgain_index = AR_SREV_9531(ah) ? 1 : modesIndex;

 if (modesIndex == ah->modes_index) {
  *ini_reloaded = 0;
  goto set_rfmode;
 }

 ar9003_hw_prog_ini(ah, &ah->iniSOC[ATH_INI_POST], modesIndex);
 ar9003_hw_prog_ini(ah, &ah->iniMac[ATH_INI_POST], modesIndex);
 ar9003_hw_prog_ini(ah, &ah->iniBB[ATH_INI_POST], modesIndex);
 ar9003_hw_prog_ini(ah, &ah->iniRadio[ATH_INI_POST], modesIndex);

 if (AR_SREV_9462_20_OR_LATER(ah))
  ar9003_hw_prog_ini(ah, &ah->ini_radio_post_sys2ant,
       modesIndex);

 REG_WRITE_ARRAY(&ah->iniModesTxGain, txgain_index, regWrites);

 if (AR_SREV_9462_20_OR_LATER(ah)) {



  if (ar9003_hw_get_rx_gain_idx(ah) == 2) {
   REG_WRITE_ARRAY(&ah->ini_modes_rxgain_bb_core,
     1, regWrites);
   REG_WRITE_ARRAY(&ah->ini_modes_rxgain_bb_postamble,
     modesIndex, regWrites);
  }
 }





 if (IS_CHAN_A_FAST_CLOCK(ah, chan))
  REG_WRITE_ARRAY(&ah->iniModesFastClock, modesIndex, regWrites);

 if (AR_SREV_9565(ah))
  REG_WRITE_ARRAY(&ah->iniModesFastClock, 1, regWrites);




 if (chan->channel == 2484)
  ar9003_hw_prog_ini(ah, &ah->iniCckfirJapan2484, 1);

 ah->modes_index = modesIndex;
 *ini_reloaded = 1;

set_rfmode:
 ar9003_hw_set_rfmode(ah, chan);
 return 0;
}
