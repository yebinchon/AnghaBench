
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int (* get_eeprom_ver ) (struct ath_hw*) ;int (* get_eeprom_rev ) (struct ath_hw*) ;} ;


 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_err (struct ath_common*,char*,int,int) ;
 int stub1 (struct ath_hw*) ;
 int stub2 (struct ath_hw*) ;
 int stub3 (struct ath_hw*) ;
 int stub4 (struct ath_hw*) ;

bool ath9k_hw_nvram_check_version(struct ath_hw *ah, int version, int minrev)
{
 struct ath_common *common = ath9k_hw_common(ah);

 if (ah->eep_ops->get_eeprom_ver(ah) != version ||
     ah->eep_ops->get_eeprom_rev(ah) < minrev) {
  ath_err(common, "Bad EEPROM VER 0x%04x or REV 0x%04x\n",
   ah->eep_ops->get_eeprom_ver(ah),
   ah->eep_ops->get_eeprom_rev(ah));
  return 0;
 }

 return 1;
}
