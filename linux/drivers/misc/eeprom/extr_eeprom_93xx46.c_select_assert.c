
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeprom_93xx46_dev {TYPE_1__* pdata; } ;
struct TYPE_2__ {int select; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void select_assert(void *context)
{
 struct eeprom_93xx46_dev *edev = context;

 gpiod_set_value_cansleep(edev->pdata->select, 1);
}
