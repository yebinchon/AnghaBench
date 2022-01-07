
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int btactive_gpio; int enabled; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR_GPIO_PDPU ;
 int AR_SREV_SOC (struct ath_hw*) ;




 int REG_RMW (struct ath_hw*,int ,int,int) ;
 int ath9k_hw_btcoex_enable_2wire (struct ath_hw*) ;
 int ath9k_hw_btcoex_enable_3wire (struct ath_hw*) ;
 int ath9k_hw_btcoex_enable_mci (struct ath_hw*) ;
 int const ath9k_hw_get_btcoex_scheme (struct ath_hw*) ;

void ath9k_hw_btcoex_enable(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;

 switch (ath9k_hw_get_btcoex_scheme(ah)) {
 case 128:
  return;
 case 131:
  ath9k_hw_btcoex_enable_2wire(ah);
  break;
 case 130:
  ath9k_hw_btcoex_enable_3wire(ah);
  break;
 case 129:
  ath9k_hw_btcoex_enable_mci(ah);
  break;
 }

 if (ath9k_hw_get_btcoex_scheme(ah) != 129 &&
     !AR_SREV_SOC(ah)) {
  REG_RMW(ah, AR_GPIO_PDPU,
   (0x2 << (btcoex_hw->btactive_gpio * 2)),
   (0x3 << (btcoex_hw->btactive_gpio * 2)));
 }

 ah->btcoex_hw.enabled = 1;
}
