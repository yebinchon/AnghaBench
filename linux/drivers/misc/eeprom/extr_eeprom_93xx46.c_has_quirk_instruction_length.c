
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeprom_93xx46_dev {TYPE_1__* pdata; } ;
struct TYPE_2__ {int quirks; } ;


 int EEPROM_93XX46_QUIRK_INSTRUCTION_LENGTH ;

__attribute__((used)) static inline bool has_quirk_instruction_length(struct eeprom_93xx46_dev *edev)
{
 return edev->pdata->quirks & EEPROM_93XX46_QUIRK_INSTRUCTION_LENGTH;
}
