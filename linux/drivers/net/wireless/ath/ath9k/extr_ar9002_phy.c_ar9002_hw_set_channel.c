
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct chan_centers {int synth_center; } ;
struct ath_hw {struct ath9k_channel* curchan; TYPE_1__* eep_ops; int iniCckfirNormal; int iniCckfirJapan2484; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int ) ;} ;


 int AR_AN_SYNTH9 ;
 int AR_AN_SYNTH9_REFDIVA ;
 int AR_AN_SYNTH9_REFDIVA_S ;
 int AR_PHY_CCK_TX_CTRL ;
 int AR_PHY_CCK_TX_CTRL_JAPAN ;
 int AR_PHY_SYNTH_CONTROL ;
 scalar_t__ AR_SREV_9287_11_OR_LATER (struct ath_hw*) ;
 int CHANSEL_2G (int) ;
 int CHANSEL_5G (int) ;
 int EEP_FRAC_N_5G ;
 int IS_CHAN_HALF_RATE (struct ath9k_channel*) ;
 int IS_CHAN_QUARTER_RATE (struct ath9k_channel*) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int REG_WRITE_ARRAY (int *,int,int) ;
 int ath9k_hw_analog_shift_rmw (struct ath_hw*,int ,int ,int ,int) ;
 int ath9k_hw_get_channel_centers (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ;
 int stub1 (struct ath_hw*,int ) ;

__attribute__((used)) static int ar9002_hw_set_channel(struct ath_hw *ah, struct ath9k_channel *chan)
{
 u16 bMode, fracMode, aModeRefSel = 0;
 u32 freq, ndiv, channelSel = 0, channelFrac = 0, reg32 = 0;
 struct chan_centers centers;
 u32 refDivA = 24;

 ath9k_hw_get_channel_centers(ah, chan, &centers);
 freq = centers.synth_center;

 reg32 = REG_READ(ah, AR_PHY_SYNTH_CONTROL);
 reg32 &= 0xc0000000;

 if (freq < 4800) {
  u32 txctl;
  int regWrites = 0;

  bMode = 1;
  fracMode = 1;
  aModeRefSel = 0;
  channelSel = CHANSEL_2G(freq);

  if (AR_SREV_9287_11_OR_LATER(ah)) {
   if (freq == 2484) {

    REG_WRITE_ARRAY(&ah->iniCckfirJapan2484,
      1, regWrites);
   } else {
    REG_WRITE_ARRAY(&ah->iniCckfirNormal,
      1, regWrites);
   }
  } else {
   txctl = REG_READ(ah, AR_PHY_CCK_TX_CTRL);
   if (freq == 2484) {

    REG_WRITE(ah, AR_PHY_CCK_TX_CTRL,
       txctl | AR_PHY_CCK_TX_CTRL_JAPAN);
   } else {
    REG_WRITE(ah, AR_PHY_CCK_TX_CTRL,
       txctl & ~AR_PHY_CCK_TX_CTRL_JAPAN);
   }
  }
 } else {
  bMode = 0;
  fracMode = 0;

  switch (ah->eep_ops->get_eeprom(ah, EEP_FRAC_N_5G)) {
  case 0:
   if (IS_CHAN_HALF_RATE(chan) || IS_CHAN_QUARTER_RATE(chan))
    aModeRefSel = 0;
   else if ((freq % 20) == 0)
    aModeRefSel = 3;
   else if ((freq % 10) == 0)
    aModeRefSel = 2;
   if (aModeRefSel)
    break;

  case 1:
  default:
   aModeRefSel = 0;




   fracMode = 1;
   refDivA = 1;
   channelSel = CHANSEL_5G(freq);


   ath9k_hw_analog_shift_rmw(ah, AR_AN_SYNTH9,
          AR_AN_SYNTH9_REFDIVA,
          AR_AN_SYNTH9_REFDIVA_S, refDivA);

  }

  if (!fracMode) {
   ndiv = (freq * (refDivA >> aModeRefSel)) / 60;
   channelSel = ndiv & 0x1ff;
   channelFrac = (ndiv & 0xfffffe00) * 2;
   channelSel = (channelSel << 17) | channelFrac;
  }
 }

 reg32 = reg32 |
     (bMode << 29) |
     (fracMode << 28) | (aModeRefSel << 26) | (channelSel);

 REG_WRITE(ah, AR_PHY_SYNTH_CONTROL, reg32);

 ah->curchan = chan;

 return 0;
}
