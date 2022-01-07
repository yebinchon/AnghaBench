
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_MCI_INTERRUPT_RX_MSG_RAW ;
 int REG_READ (struct ath_hw*,int ) ;

__attribute__((used)) static bool ar9003_mci_check_int(struct ath_hw *ah, u32 ints)
{
 u32 intr;

 intr = REG_READ(ah, AR_MCI_INTERRUPT_RX_MSG_RAW);
 return ((intr & ints) == ints);
}
