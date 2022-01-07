
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ath5k_hw {int dummy; } ;


 scalar_t__ AR5K_EEPROM_MODE_11A ;
 scalar_t__ AR5K_EEPROM_MODE_11G ;
 int ath5k_eeprom_free_pcal_info (struct ath5k_hw*,scalar_t__) ;

void
ath5k_eeprom_detach(struct ath5k_hw *ah)
{
 u8 mode;

 for (mode = AR5K_EEPROM_MODE_11A; mode <= AR5K_EEPROM_MODE_11G; mode++)
  ath5k_eeprom_free_pcal_info(ah, mode);
}
