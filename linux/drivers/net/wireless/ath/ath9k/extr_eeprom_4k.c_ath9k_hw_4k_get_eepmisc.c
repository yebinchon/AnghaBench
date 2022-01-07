
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int eepMisc; } ;
struct TYPE_5__ {TYPE_1__ baseEepHeader; } ;
struct TYPE_6__ {TYPE_2__ map4k; } ;
struct ath_hw {TYPE_3__ eeprom; } ;



__attribute__((used)) static u8 ath9k_hw_4k_get_eepmisc(struct ath_hw *ah)
{
 return ah->eeprom.map4k.baseEepHeader.eepMisc;
}
