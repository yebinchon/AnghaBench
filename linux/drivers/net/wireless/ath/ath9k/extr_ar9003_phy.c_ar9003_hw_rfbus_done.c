
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int curchan; } ;


 int AR_PHY_RFBUS_REQ ;
 int AR_PHY_RX_DELAY ;
 int AR_PHY_RX_DELAY_DELAY ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_synth_delay (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ar9003_hw_rfbus_done(struct ath_hw *ah)
{
 u32 synthDelay = REG_READ(ah, AR_PHY_RX_DELAY) & AR_PHY_RX_DELAY_DELAY;

 ath9k_hw_synth_delay(ah, ah->curchan, synthDelay);

 REG_WRITE(ah, AR_PHY_RFBUS_REQ, 0);
}
