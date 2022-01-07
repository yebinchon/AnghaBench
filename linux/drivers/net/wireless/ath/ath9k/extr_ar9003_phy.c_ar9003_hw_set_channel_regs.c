
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_CST ;
 int AR_CST_TIMEOUT_LIMIT_S ;
 int AR_GTXTO ;
 int AR_GTXTO_TIMEOUT_LIMIT_S ;
 int AR_PHY_GC_DYN2040_EN ;
 int AR_PHY_GC_DYN2040_PRI_CH ;
 int AR_PHY_GC_ENABLE_DAC_FIFO ;
 int AR_PHY_GC_GF_DETECT_EN ;
 int AR_PHY_GC_HT_EN ;
 int AR_PHY_GC_SHORT_GI_40 ;
 int AR_PHY_GC_SINGLE_HT_LTF1 ;
 int AR_PHY_GEN_CTRL ;
 int AR_SREV_9561 (struct ath_hw*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40PLUS (struct ath9k_channel*) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_set11nmac2040 (struct ath_hw*,struct ath9k_channel*) ;

__attribute__((used)) static void ar9003_hw_set_channel_regs(struct ath_hw *ah,
           struct ath9k_channel *chan)
{
 u32 phymode;
 u32 enableDacFifo = 0;

 enableDacFifo =
  (REG_READ(ah, AR_PHY_GEN_CTRL) & AR_PHY_GC_ENABLE_DAC_FIFO);


 phymode = AR_PHY_GC_HT_EN | AR_PHY_GC_SHORT_GI_40 | enableDacFifo;

 if (!AR_SREV_9561(ah))
  phymode |= AR_PHY_GC_SINGLE_HT_LTF1;


 if (IS_CHAN_HT40(chan)) {
  phymode |= AR_PHY_GC_DYN2040_EN;

  if (IS_CHAN_HT40PLUS(chan))
   phymode |= AR_PHY_GC_DYN2040_PRI_CH;

 }


 phymode |= REG_READ(ah, AR_PHY_GEN_CTRL);

 phymode &= ~AR_PHY_GC_GF_DETECT_EN;

 REG_WRITE(ah, AR_PHY_GEN_CTRL, phymode);


 ath9k_hw_set11nmac2040(ah, chan);


 REG_WRITE(ah, AR_GTXTO, 25 << AR_GTXTO_TIMEOUT_LIMIT_S);

 REG_WRITE(ah, AR_CST, 0xF << AR_CST_TIMEOUT_LIMIT_S);
}
