
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_MCI_INTERRUPT_EN ;
 int AR_MCI_INTERRUPT_RX_MSG_EN ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9003_mci_disable_interrupt(struct ath_hw *ah)
{
 REG_WRITE(ah, AR_MCI_INTERRUPT_EN, 0);
 REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_EN, 0);
}
