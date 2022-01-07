
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_CR ;
 int AR_CR_RXD ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int AR_DLCL_IFS (int) ;
 int AR_DRETRY_LIMIT (int) ;
 int AR_D_FPCTL ;
 int AR_D_GBL_IFS_EIFS ;
 int AR_D_GBL_IFS_SIFS ;
 int AR_QMISC (int) ;
 int AR_Q_MISC_DCU_EARLY_TERM_REQ ;
 int AR_TIME_OUT ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ar9002_hw_tx99_start(struct ath_hw *ah, u32 qnum)
{
 REG_SET_BIT(ah, 0x9864, 0x7f000);
 REG_SET_BIT(ah, 0x9924, 0x7f00fe);
 REG_CLR_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_DIS);
 REG_WRITE(ah, AR_CR, AR_CR_RXD);
 REG_WRITE(ah, AR_DLCL_IFS(qnum), 0);
 REG_WRITE(ah, AR_D_GBL_IFS_SIFS, 20);
 REG_WRITE(ah, AR_D_GBL_IFS_EIFS, 20);
 REG_WRITE(ah, AR_D_FPCTL, 0x10|qnum);
 REG_WRITE(ah, AR_TIME_OUT, 0x00000400);
 REG_WRITE(ah, AR_DRETRY_LIMIT(qnum), 0xffffffff);
 REG_SET_BIT(ah, AR_QMISC(qnum), AR_Q_MISC_DCU_EARLY_TERM_REQ);
}
