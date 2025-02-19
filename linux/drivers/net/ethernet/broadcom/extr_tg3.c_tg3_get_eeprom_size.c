
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int nvram_size; } ;


 int EEPROM_CHIP_SIZE ;
 int TG3_EEPROM_MAGIC ;
 int TG3_EEPROM_MAGIC_FW ;
 int TG3_EEPROM_MAGIC_FW_MSK ;
 int TG3_EEPROM_MAGIC_HW ;
 int TG3_EEPROM_MAGIC_HW_MSK ;
 scalar_t__ tg3_nvram_read (struct tg3*,int,int*) ;

__attribute__((used)) static void tg3_get_eeprom_size(struct tg3 *tp)
{
 u32 cursize, val, magic;

 tp->nvram_size = EEPROM_CHIP_SIZE;

 if (tg3_nvram_read(tp, 0, &magic) != 0)
  return;

 if ((magic != TG3_EEPROM_MAGIC) &&
     ((magic & TG3_EEPROM_MAGIC_FW_MSK) != TG3_EEPROM_MAGIC_FW) &&
     ((magic & TG3_EEPROM_MAGIC_HW_MSK) != TG3_EEPROM_MAGIC_HW))
  return;






 cursize = 0x10;

 while (cursize < tp->nvram_size) {
  if (tg3_nvram_read(tp, cursize, &val) != 0)
   return;

  if (val == magic)
   break;

  cursize <<= 1;
 }

 tp->nvram_size = cursize;
}
