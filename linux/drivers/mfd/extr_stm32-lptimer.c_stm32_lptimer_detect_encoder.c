
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_lptimer {int has_encoder; int regmap; } ;


 int STM32_LPTIM_CFGR ;
 int STM32_LPTIM_ENC ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int stm32_lptimer_detect_encoder(struct stm32_lptimer *ddata)
{
 u32 val;
 int ret;





 ret = regmap_update_bits(ddata->regmap, STM32_LPTIM_CFGR,
     STM32_LPTIM_ENC, STM32_LPTIM_ENC);
 if (ret)
  return ret;

 ret = regmap_read(ddata->regmap, STM32_LPTIM_CFGR, &val);
 if (ret)
  return ret;

 ret = regmap_update_bits(ddata->regmap, STM32_LPTIM_CFGR,
     STM32_LPTIM_ENC, 0);
 if (ret)
  return ret;

 ddata->has_encoder = !!(val & STM32_LPTIM_ENC);

 return 0;
}
