
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar9300_base_eep_hdr {int miscConfiguration; } ;
struct ar9300_eeprom {struct ar9300_base_eep_hdr baseEepHeader; } ;
struct TYPE_2__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;



__attribute__((used)) static int ar9003_hw_get_thermometer(struct ath_hw *ah)
{
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 struct ar9300_base_eep_hdr *pBase = &eep->baseEepHeader;
 int thermometer = (pBase->miscConfiguration >> 1) & 0x3;

 return --thermometer;
}
