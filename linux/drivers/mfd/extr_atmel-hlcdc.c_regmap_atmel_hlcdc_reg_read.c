
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_hlcdc_regmap {scalar_t__ regs; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int regmap_atmel_hlcdc_reg_read(void *context, unsigned int reg,
           unsigned int *val)
{
 struct atmel_hlcdc_regmap *hregmap = context;

 *val = readl(hregmap->regs + reg);

 return 0;
}
