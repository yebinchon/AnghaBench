
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_6__ {TYPE_1__* spurChans; } ;
struct TYPE_7__ {TYPE_2__ modalHeader; } ;
struct TYPE_8__ {TYPE_3__ map9287; } ;
struct ath_hw {TYPE_4__ eeprom; } ;
typedef int __le16 ;
struct TYPE_5__ {int spurChan; } ;


 size_t le16_to_cpu (int ) ;

__attribute__((used)) static u16 ath9k_hw_ar9287_get_spur_channel(struct ath_hw *ah,
         u16 i, bool is2GHz)
{
 __le16 spur_ch = ah->eeprom.map9287.modalHeader.spurChans[i].spurChan;

 return le16_to_cpu(spur_ch);
}
