
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int version; } ;
struct TYPE_5__ {TYPE_1__ baseEepHeader; } ;
struct TYPE_6__ {TYPE_2__ map4k; } ;
struct ath_hw {TYPE_3__ eeprom; } ;


 int AR5416_EEP_VER_MAJOR_MASK ;
 int AR5416_EEP_VER_MAJOR_SHIFT ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ath9k_hw_4k_get_eeprom_ver(struct ath_hw *ah)
{
 u16 version = le16_to_cpu(ah->eeprom.map4k.baseEepHeader.version);

 return (version & AR5416_EEP_VER_MAJOR_MASK) >>
  AR5416_EEP_VER_MAJOR_SHIFT;
}
