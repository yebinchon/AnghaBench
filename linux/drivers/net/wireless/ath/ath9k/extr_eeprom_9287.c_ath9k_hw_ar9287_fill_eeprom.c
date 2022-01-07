
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_2__ {scalar_t__ ath_bus_type; } ;


 scalar_t__ ATH_USB ;
 int EEPROM ;
 int __ath9k_hw_ar9287_fill_eeprom (struct ath_hw*) ;
 int __ath9k_hw_usb_ar9287_fill_eeprom (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_use_flash (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

__attribute__((used)) static bool ath9k_hw_ar9287_fill_eeprom(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 if (!ath9k_hw_use_flash(ah)) {
  ath_dbg(common, EEPROM, "Reading from EEPROM, not flash\n");
 }

 if (common->bus_ops->ath_bus_type == ATH_USB)
  return __ath9k_hw_usb_ar9287_fill_eeprom(ah);
 else
  return __ath9k_hw_ar9287_fill_eeprom(ah);
}
