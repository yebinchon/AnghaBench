
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int ah_rf_banks; int status; } ;


 int ATH_STAT_INVALID ;
 int __set_bit (int ,int ) ;
 int ath5k_eeprom_detach (struct ath5k_hw*) ;
 int kfree (int ) ;

void ath5k_hw_deinit(struct ath5k_hw *ah)
{
 __set_bit(ATH_STAT_INVALID, ah->status);

 kfree(ah->ah_rf_banks);

 ath5k_eeprom_detach(ah);


}
