
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int dummy; } ;


 int PCF50633_GPIO1 ;
 int PCF50633_REG_GPIO1CFG ;
 int pcf50633_reg_set_bit_mask (struct pcf50633*,int,int,int) ;

int pcf50633_gpio_set(struct pcf50633 *pcf, int gpio, u8 val)
{
 u8 reg;

 reg = gpio - PCF50633_GPIO1 + PCF50633_REG_GPIO1CFG;

 return pcf50633_reg_set_bit_mask(pcf, reg, 0x07, val);
}
