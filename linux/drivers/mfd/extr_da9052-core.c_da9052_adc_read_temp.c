
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dummy; } ;


 int DA9052_TBAT_RES_REG ;
 int da9052_reg_read (struct da9052*,int ) ;
 int* tbat_lookup ;

int da9052_adc_read_temp(struct da9052 *da9052)
{
 int tbat;

 tbat = da9052_reg_read(da9052, DA9052_TBAT_RES_REG);
 if (tbat <= 0)
  return tbat;


 return tbat_lookup[tbat - 1];
}
