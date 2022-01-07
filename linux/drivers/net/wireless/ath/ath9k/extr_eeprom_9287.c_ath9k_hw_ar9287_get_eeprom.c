
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct modal_eep_ar9287_header {int * antennaGainCh; int * noiseFloorThreshCh; } ;
struct base_eep_ar9287_header {int tempSensSlopePalOn; int tempSensSlope; int openLoopPwrCntl; int deviceType; int rxMask; int txMask; int rfSilent; int opCapFlags; int deviceCap; int * regDmn; int macAddr; } ;
struct ar9287_eeprom {struct base_eep_ar9287_header baseEepHeader; struct modal_eep_ar9287_header modalHeader; } ;
struct TYPE_2__ {struct ar9287_eeprom map9287; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
typedef enum eeprom_param { ____Placeholder_eeprom_param } eeprom_param ;


 int AR9287_EEP_MINOR_VER_2 ;
 int AR9287_EEP_MINOR_VER_3 ;
 int ath9k_hw_ar9287_get_eeprom_rev (struct ath_hw*) ;
 int get_unaligned_be16 (int ) ;
 int le16_to_cpu (int ) ;
 int max_t (int ,int ,int ) ;
 int u8 ;

__attribute__((used)) static u32 ath9k_hw_ar9287_get_eeprom(struct ath_hw *ah,
          enum eeprom_param param)
{
 struct ar9287_eeprom *eep = &ah->eeprom.map9287;
 struct modal_eep_ar9287_header *pModal = &eep->modalHeader;
 struct base_eep_ar9287_header *pBase = &eep->baseEepHeader;
 u16 ver_minor = ath9k_hw_ar9287_get_eeprom_rev(ah);

 switch (param) {
 case 137:
  return pModal->noiseFloorThreshCh[0];
 case 140:
  return get_unaligned_be16(pBase->macAddr);
 case 139:
  return get_unaligned_be16(pBase->macAddr + 2);
 case 138:
  return get_unaligned_be16(pBase->macAddr + 4);
 case 133:
  return le16_to_cpu(pBase->regDmn[0]);
 case 135:
  return le16_to_cpu(pBase->deviceCap);
 case 134:
  return pBase->opCapFlags;
 case 132:
  return le16_to_cpu(pBase->rfSilent);
 case 128:
  return pBase->txMask;
 case 131:
  return pBase->rxMask;
 case 141:
  return pBase->deviceType;
 case 136:
  return pBase->openLoopPwrCntl;
 case 130:
  if (ver_minor >= AR9287_EEP_MINOR_VER_2)
   return pBase->tempSensSlope;
  else
   return 0;
 case 129:
  if (ver_minor >= AR9287_EEP_MINOR_VER_3)
   return pBase->tempSensSlopePalOn;
  else
   return 0;
 case 142:
  return max_t(u8, pModal->antennaGainCh[0],
     pModal->antennaGainCh[1]);
 default:
  return 0;
 }
}
