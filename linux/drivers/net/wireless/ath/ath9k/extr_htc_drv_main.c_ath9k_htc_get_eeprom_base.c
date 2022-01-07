
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct base_eep_header {int dummy; } ;
struct ath9k_htc_priv {TYPE_6__* ah; } ;
struct TYPE_10__ {int baseEepHeader; } ;
struct TYPE_8__ {int baseEepHeader; } ;
struct TYPE_7__ {int baseEepHeader; } ;
struct TYPE_11__ {TYPE_4__ map9287; TYPE_2__ def; TYPE_1__ map4k; } ;
struct TYPE_9__ {scalar_t__ usbdev; } ;
struct TYPE_12__ {TYPE_5__ eeprom; TYPE_3__ hw_version; } ;


 scalar_t__ AR9280_USB ;
 scalar_t__ AR9287_USB ;
 scalar_t__ AR_SREV_9271 (TYPE_6__*) ;

struct base_eep_header *ath9k_htc_get_eeprom_base(struct ath9k_htc_priv *priv)
{
 struct base_eep_header *pBase = ((void*)0);






 if (AR_SREV_9271(priv->ah))
  pBase = (struct base_eep_header *)
   &priv->ah->eeprom.map4k.baseEepHeader;
 else if (priv->ah->hw_version.usbdev == AR9280_USB)
  pBase = (struct base_eep_header *)
   &priv->ah->eeprom.def.baseEepHeader;
 else if (priv->ah->hw_version.usbdev == AR9287_USB)
  pBase = (struct base_eep_header *)
   &priv->ah->eeprom.map9287.baseEepHeader;
 return pBase;
}
