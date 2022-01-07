
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3560_flash {int regmap; int led_mode; TYPE_1__* pdata; } ;
struct TYPE_2__ {int peak; } ;


 int REG_FLAG ;
 int REG_FLASH_TOUT ;
 int V4L2_FLASH_LED_MODE_NONE ;
 int lm3560_mode_ctrl (struct lm3560_flash*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int lm3560_init_device(struct lm3560_flash *flash)
{
 int rval;
 unsigned int reg_val;


 rval = regmap_update_bits(flash->regmap,
      REG_FLASH_TOUT, 0x60, flash->pdata->peak);
 if (rval < 0)
  return rval;

 flash->led_mode = V4L2_FLASH_LED_MODE_NONE;
 rval = lm3560_mode_ctrl(flash);
 if (rval < 0)
  return rval;

 rval = regmap_read(flash->regmap, REG_FLAG, &reg_val);
 return rval;
}
