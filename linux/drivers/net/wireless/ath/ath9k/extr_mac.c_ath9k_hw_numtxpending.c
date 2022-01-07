
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_QSTS (int) ;
 int AR_Q_STS_PEND_FR_CNT ;
 int AR_Q_TXE ;
 int REG_READ (struct ath_hw*,int ) ;

u32 ath9k_hw_numtxpending(struct ath_hw *ah, u32 q)
{
 u32 npend;

 npend = REG_READ(ah, AR_QSTS(q)) & AR_Q_STS_PEND_FR_CNT;
 if (npend == 0) {

  if (REG_READ(ah, AR_Q_TXE) & (1 << q))
   npend = 1;
 }

 return npend;
}
