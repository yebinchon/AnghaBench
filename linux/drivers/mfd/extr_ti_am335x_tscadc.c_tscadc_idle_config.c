
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_tscadc_dev {int regmap; } ;


 int REG_IDLECONFIG ;
 unsigned int STEPCONFIG_INM_ADCREFM ;
 unsigned int STEPCONFIG_INP_ADCREFM ;
 unsigned int STEPCONFIG_YNN ;
 unsigned int STEPCONFIG_YPN ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static void tscadc_idle_config(struct ti_tscadc_dev *tscadc)
{
 unsigned int idleconfig;

 idleconfig = STEPCONFIG_YNN | STEPCONFIG_INM_ADCREFM |
   STEPCONFIG_INP_ADCREFM | STEPCONFIG_YPN;

 regmap_write(tscadc->regmap, REG_IDLECONFIG, idleconfig);
}
