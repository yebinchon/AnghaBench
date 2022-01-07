
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3646_flash {unsigned int mode_reg; int regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {int led1_torch_brt; int led1_flash_brt; } ;


 int LM3646_LED1_FLASH_BRT_uA_TO_REG (int ) ;
 int LM3646_LED1_TORCH_BRT_uA_TO_REG (int ) ;
 int REG_ENABLE ;
 int REG_FLAG ;
 int REG_LED1_FLASH_BR ;
 int REG_LED1_TORCH_BR ;
 int V4L2_FLASH_LED_MODE_NONE ;
 int lm3646_mode_ctrl (struct lm3646_flash*,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int lm3646_init_device(struct lm3646_flash *flash)
{
 unsigned int reg_val;
 int rval;


 rval = regmap_read(flash->regmap, REG_ENABLE, &reg_val);
 if (rval < 0)
  return rval;
 flash->mode_reg = reg_val & 0xfc;


 rval = lm3646_mode_ctrl(flash, V4L2_FLASH_LED_MODE_NONE);
 if (rval < 0)
  return rval;





 rval = regmap_update_bits(flash->regmap,
      REG_LED1_FLASH_BR, 0x7F,
      LM3646_LED1_FLASH_BRT_uA_TO_REG
      (flash->pdata->led1_flash_brt));

 if (rval < 0)
  return rval;





 rval = regmap_update_bits(flash->regmap,
      REG_LED1_TORCH_BR, 0x7F,
      LM3646_LED1_TORCH_BRT_uA_TO_REG
      (flash->pdata->led1_torch_brt));
 if (rval < 0)
  return rval;


 return regmap_read(flash->regmap, REG_FLAG, &reg_val);
}
