
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ar9287_eeprom {int dummy; } ;
struct TYPE_2__ {struct ar9287_eeprom map9287; } ;
struct ath_hw {TYPE_1__ eeprom; } ;


 int AR9287_EEP_START_LOC ;
 int SIZE_EEPROM_AR9287 ;
 int ath9k_hw_nvram_read (struct ath_hw*,int,int *) ;

__attribute__((used)) static bool __ath9k_hw_ar9287_fill_eeprom(struct ath_hw *ah)
{
 struct ar9287_eeprom *eep = &ah->eeprom.map9287;
 u16 *eep_data;
 int addr, eep_start_loc = AR9287_EEP_START_LOC;
 eep_data = (u16 *)eep;

 for (addr = 0; addr < SIZE_EEPROM_AR9287; addr++) {
  if (!ath9k_hw_nvram_read(ah, addr + eep_start_loc, eep_data))
   return 0;
  eep_data++;
 }

 return 1;
}
