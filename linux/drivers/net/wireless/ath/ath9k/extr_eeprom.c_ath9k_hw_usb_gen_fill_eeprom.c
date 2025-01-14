
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ath_hw {int dummy; } ;


 scalar_t__ AR5416_EEPROM_OFFSET ;
 int AR5416_EEPROM_S ;
 int REG_READ_MULTI (struct ath_hw*,scalar_t__*,scalar_t__*,int) ;

void ath9k_hw_usb_gen_fill_eeprom(struct ath_hw *ah, u16 *eep_data,
      int eep_start_loc, int size)
{
 int i = 0, j, addr;
 u32 addrdata[8];
 u32 data[8];

 for (addr = 0; addr < size; addr++) {
  addrdata[i] = AR5416_EEPROM_OFFSET +
   ((addr + eep_start_loc) << AR5416_EEPROM_S);
  i++;
  if (i == 8) {
   REG_READ_MULTI(ah, addrdata, data, i);

   for (j = 0; j < i; j++) {
    *eep_data = data[j];
    eep_data++;
   }
   i = 0;
  }
 }

 if (i != 0) {
  REG_READ_MULTI(ah, addrdata, data, i);

  for (j = 0; j < i; j++) {
   *eep_data = data[j];
   eep_data++;
  }
 }
}
