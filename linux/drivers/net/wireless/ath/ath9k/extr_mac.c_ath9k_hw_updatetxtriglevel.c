
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ max_txtrig_level; } ;
struct ath_hw {scalar_t__ tx_trig_level; TYPE_1__ config; } ;


 scalar_t__ AR_FTRIG ;
 int AR_TXCFG ;
 scalar_t__ MIN_TX_FIFO_THRESHOLD ;
 scalar_t__ MS (scalar_t__,scalar_t__) ;
 scalar_t__ REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,scalar_t__) ;
 scalar_t__ SM (scalar_t__,scalar_t__) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;

bool ath9k_hw_updatetxtriglevel(struct ath_hw *ah, bool bIncTrigLevel)
{
 u32 txcfg, curLevel, newLevel;

 if (ah->tx_trig_level >= ah->config.max_txtrig_level)
  return 0;

 ath9k_hw_disable_interrupts(ah);

 txcfg = REG_READ(ah, AR_TXCFG);
 curLevel = MS(txcfg, AR_FTRIG);
 newLevel = curLevel;
 if (bIncTrigLevel) {
  if (curLevel < ah->config.max_txtrig_level)
   newLevel++;
 } else if (curLevel > MIN_TX_FIFO_THRESHOLD)
  newLevel--;
 if (newLevel != curLevel)
  REG_WRITE(ah, AR_TXCFG,
     (txcfg & ~AR_FTRIG) | SM(newLevel, AR_FTRIG));

 ath9k_hw_enable_interrupts(ah);

 ah->tx_trig_level = newLevel;

 return newLevel != curLevel;
}
