
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ath_hw {int eeprom; } ;
struct ath_common {int dummy; } ;


 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_err (struct ath_common*,char*,int) ;

bool ath9k_hw_nvram_validate_checksum(struct ath_hw *ah, int size)
{
 u32 i, sum = 0;
 u16 *eepdata = (u16 *)(&ah->eeprom);
 struct ath_common *common = ath9k_hw_common(ah);

 for (i = 0; i < size; i++)
  sum ^= eepdata[i];

 if (sum != 0xffff) {
  ath_err(common, "Bad EEPROM checksum 0x%x\n", sum);
  return 0;
 }

 return 1;
}
