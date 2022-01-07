
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AR9300_EEPROM_SIZE ;
 int EEPROM ;
 int ar9300_eeprom_read_byte (struct ath_hw*,int,int *) ;
 int ar9300_eeprom_read_word (struct ath_hw*,int,int *) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;

__attribute__((used)) static bool ar9300_read_eeprom(struct ath_hw *ah, int address, u8 *buffer,
          int count)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int i;

 if ((address < 0) || ((address + count) / 2 > AR9300_EEPROM_SIZE - 1)) {
  ath_dbg(common, EEPROM, "eeprom address not in range\n");
  return 0;
 }






 if (address % 2 == 0) {
  if (!ar9300_eeprom_read_byte(ah, address--, buffer++))
   goto error;

  count--;
 }

 for (i = 0; i < count / 2; i++) {
  if (!ar9300_eeprom_read_word(ah, address, buffer))
   goto error;

  address -= 2;
  buffer += 2;
 }

 if (count % 2)
  if (!ar9300_eeprom_read_byte(ah, address, buffer))
   goto error;

 return 1;

error:
 ath_dbg(common, EEPROM, "unable to read eeprom region at offset %d\n",
  address);
 return 0;
}
