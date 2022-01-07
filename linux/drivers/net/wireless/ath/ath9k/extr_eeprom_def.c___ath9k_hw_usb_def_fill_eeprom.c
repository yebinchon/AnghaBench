
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int def; } ;
struct ath_hw {TYPE_1__ eeprom; } ;


 int SIZE_EEPROM_DEF ;
 int ath9k_hw_usb_gen_fill_eeprom (struct ath_hw*,int *,int,int ) ;

__attribute__((used)) static bool __ath9k_hw_usb_def_fill_eeprom(struct ath_hw *ah)
{
 u16 *eep_data = (u16 *)&ah->eeprom.def;

 ath9k_hw_usb_gen_fill_eeprom(ah, eep_data,
         0x100, SIZE_EEPROM_DEF);
 return 1;
}
