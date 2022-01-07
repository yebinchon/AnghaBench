
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int ath9k_ani_reset (struct ath_hw*,int) ;
 int ath9k_enable_mib_counters (struct ath_hw*) ;

void ath9k_hw_startpcureceive(struct ath_hw *ah, bool is_scanning)
{
 ath9k_enable_mib_counters(ah);

 ath9k_ani_reset(ah, is_scanning);

 REG_CLR_BIT(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));
}
