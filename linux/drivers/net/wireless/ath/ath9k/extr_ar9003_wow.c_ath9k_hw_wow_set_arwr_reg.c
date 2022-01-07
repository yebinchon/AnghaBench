
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int is_pciexpress; } ;


 int AR_WA ;
 int AR_WA_POR_SHORT ;
 int AR_WA_RESET_EN ;
 int AR_WA_UNTIE_RESET_EN ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ath9k_hw_wow_set_arwr_reg(struct ath_hw *ah)
{
 u32 wa_reg;

 if (!ah->is_pciexpress)
  return;






 wa_reg = REG_READ(ah, AR_WA);
 wa_reg &= ~AR_WA_UNTIE_RESET_EN;
 wa_reg |= AR_WA_RESET_EN;
 wa_reg |= AR_WA_POR_SHORT;

 REG_WRITE(ah, AR_WA, wa_reg);
}
