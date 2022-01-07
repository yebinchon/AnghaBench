
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_EEPROM_OE ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void digsy_mtc_op_prepare(void *p)
{

 gpio_set_value(GPIO_EEPROM_OE, 0);
}
