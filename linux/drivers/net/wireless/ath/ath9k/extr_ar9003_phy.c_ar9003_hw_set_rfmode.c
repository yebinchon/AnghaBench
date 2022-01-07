
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_PHY_FRAME_CTL ;
 int AR_PHY_FRAME_CTL_CF_OVERLAP_WINDOW ;
 int AR_PHY_MODE ;
 int AR_PHY_MODE_DYNAMIC ;
 int AR_PHY_MODE_DYN_CCK_DISABLE ;
 int AR_PHY_MODE_OFDM ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HALF_RATE (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (struct ath9k_channel*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ar9003_hw_set_rfmode(struct ath_hw *ah,
     struct ath9k_channel *chan)
{
 u32 rfMode = 0;

 if (chan == ((void*)0))
  return;

 if (IS_CHAN_2GHZ(chan))
  rfMode |= AR_PHY_MODE_DYNAMIC;
 else
  rfMode |= AR_PHY_MODE_OFDM;

 if (IS_CHAN_A_FAST_CLOCK(ah, chan))
  rfMode |= (AR_PHY_MODE_DYNAMIC | AR_PHY_MODE_DYN_CCK_DISABLE);

 if (IS_CHAN_HALF_RATE(chan) || IS_CHAN_QUARTER_RATE(chan))
  REG_RMW_FIELD(ah, AR_PHY_FRAME_CTL,
         AR_PHY_FRAME_CTL_CF_OVERLAP_WINDOW, 3);

 REG_WRITE(ah, AR_PHY_MODE, rfMode);
}
