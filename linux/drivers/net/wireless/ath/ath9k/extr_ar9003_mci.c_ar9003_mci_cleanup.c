
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_BTCOEX_CTRL ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ar9003_mci_disable_interrupt (struct ath_hw*) ;

void ar9003_mci_cleanup(struct ath_hw *ah)
{

 REG_WRITE(ah, AR_BTCOEX_CTRL, 0x00);
 ar9003_mci_disable_interrupt(ah);
}
