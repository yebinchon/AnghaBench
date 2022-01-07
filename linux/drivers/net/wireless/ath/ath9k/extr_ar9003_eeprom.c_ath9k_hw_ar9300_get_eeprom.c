
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int antennaGain; } ;
struct TYPE_9__ {int antennaGain; } ;
struct TYPE_8__ {int ant_div_control; } ;
struct TYPE_7__ {int opFlags; } ;
struct ar9300_base_eep_hdr {int deviceCap; int rfSilent; int txrxMask; int featureEnable; int miscConfiguration; TYPE_2__ opCapFlags; int * regDmn; } ;
struct ar9300_eeprom {TYPE_5__ modalHeader2G; TYPE_4__ modalHeader5G; TYPE_3__ base_ext1; int macAddr; struct ar9300_base_eep_hdr baseEepHeader; } ;
struct TYPE_6__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
typedef enum eeprom_param { ____Placeholder_eeprom_param } eeprom_param ;


 int AR9300_EEP_ANTDIV_CONTROL_DEFAULT_VALUE ;
 int AR_SREV_9565 (struct ath_hw*) ;
 int BIT (int) ;
 int get_unaligned_be16 (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u32 ath9k_hw_ar9300_get_eeprom(struct ath_hw *ah,
          enum eeprom_param param)
{
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 struct ar9300_base_eep_hdr *pBase = &eep->baseEepHeader;

 switch (param) {
 case 137:
  return get_unaligned_be16(eep->macAddr);
 case 136:
  return get_unaligned_be16(eep->macAddr + 2);
 case 135:
  return get_unaligned_be16(eep->macAddr + 4);
 case 131:
  return le16_to_cpu(pBase->regDmn[0]);
 case 134:
  return pBase->deviceCap;
 case 133:
  return pBase->opCapFlags.opFlags;
 case 130:
  return pBase->rfSilent;
 case 128:
  return (pBase->txrxMask >> 4) & 0xf;
 case 129:
  return pBase->txrxMask & 0xf;
 case 132:
  return !!(pBase->featureEnable & BIT(5));
 case 138:
  return (pBase->miscConfiguration >> 0x3) & 0x1;
 case 139:
  if (AR_SREV_9565(ah))
   return AR9300_EEP_ANTDIV_CONTROL_DEFAULT_VALUE;
  else
   return eep->base_ext1.ant_div_control;
 case 140:
  return eep->modalHeader5G.antennaGain;
 case 141:
  return eep->modalHeader2G.antennaGain;
 default:
  return 0;
 }
}
