
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {scalar_t__ curchan; } ;


 int AR_DIAG_FORCE_CH_IDLE_HIGH ;
 int AR_DIAG_SW ;
 int AR_D_GBL_IFS_MISC ;
 int AR_D_GBL_IFS_MISC_IGNORE_BACKOFF ;
 int AR_NUM_QCU ;
 int AR_PCU_CLEAR_VMF ;
 int AR_PCU_FORCE_QUIET_COLL ;
 int AR_PCU_MISC ;
 int AR_Q_TXD ;
 int AR_Q_TXD_M ;
 scalar_t__ IS_CHAN_HALF_RATE (scalar_t__) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (scalar_t__) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_numtxpending (struct ath_hw*,int) ;
 int udelay (int) ;

void ath9k_hw_abort_tx_dma(struct ath_hw *ah)
{
 int maxdelay = 1000;
 int i, q;

 if (ah->curchan) {
  if (IS_CHAN_HALF_RATE(ah->curchan))
   maxdelay *= 2;
  else if (IS_CHAN_QUARTER_RATE(ah->curchan))
   maxdelay *= 4;
 }

 REG_WRITE(ah, AR_Q_TXD, AR_Q_TXD_M);

 REG_SET_BIT(ah, AR_PCU_MISC, AR_PCU_FORCE_QUIET_COLL | AR_PCU_CLEAR_VMF);
 REG_SET_BIT(ah, AR_DIAG_SW, AR_DIAG_FORCE_CH_IDLE_HIGH);
 REG_SET_BIT(ah, AR_D_GBL_IFS_MISC, AR_D_GBL_IFS_MISC_IGNORE_BACKOFF);

 for (q = 0; q < AR_NUM_QCU; q++) {
  for (i = 0; i < maxdelay; i++) {
   if (i)
    udelay(5);

   if (!ath9k_hw_numtxpending(ah, q))
    break;
  }
 }

 REG_CLR_BIT(ah, AR_PCU_MISC, AR_PCU_FORCE_QUIET_COLL | AR_PCU_CLEAR_VMF);
 REG_CLR_BIT(ah, AR_DIAG_SW, AR_DIAG_FORCE_CH_IDLE_HIGH);
 REG_CLR_BIT(ah, AR_D_GBL_IFS_MISC, AR_D_GBL_IFS_MISC_IGNORE_BACKOFF);

 REG_WRITE(ah, AR_Q_TXD, 0);
}
