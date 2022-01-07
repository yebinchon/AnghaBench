
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tg3 {int nvram_size; } ;


 int NO_NVRAM ;
 int TG3_EEPROM_MAGIC ;
 int TG3_NVRAM_SIZE_512KB ;
 int swab16 (int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_get_eeprom_size (struct tg3*) ;
 scalar_t__ tg3_nvram_read (struct tg3*,int,int*) ;

__attribute__((used)) static void tg3_get_nvram_size(struct tg3 *tp)
{
 u32 val;

 if (tg3_flag(tp, NO_NVRAM) || tg3_nvram_read(tp, 0, &val) != 0)
  return;


 if (val != TG3_EEPROM_MAGIC) {
  tg3_get_eeprom_size(tp);
  return;
 }

 if (tg3_nvram_read(tp, 0xf0, &val) == 0) {
  if (val != 0) {
   tp->nvram_size = swab16((u16)(val & 0x0000ffff)) * 1024;
   return;
  }
 }
 tp->nvram_size = TG3_NVRAM_SIZE_512KB;
}
