
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar9300_modal_eep_header {int dummy; } ;
struct ar9300_eeprom {struct ar9300_modal_eep_header modalHeader5G; struct ar9300_modal_eep_header modalHeader2G; } ;
struct TYPE_2__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;



__attribute__((used)) static struct ar9300_modal_eep_header *ar9003_modal_header(struct ath_hw *ah,
          bool is2ghz)
{
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;

 if (is2ghz)
  return &eep->modalHeader2G;
 else
  return &eep->modalHeader5G;
}
