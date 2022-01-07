
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3646_flash {int mode_reg; int regmap; } ;
typedef enum v4l2_flash_led_mode { ____Placeholder_v4l2_flash_led_mode } v4l2_flash_led_mode ;


 int EINVAL ;
 int MODE_FLASH ;
 int MODE_SHDN ;
 int MODE_TORCH ;
 int REG_ENABLE ;



 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int lm3646_mode_ctrl(struct lm3646_flash *flash,
       enum v4l2_flash_led_mode led_mode)
{
 switch (led_mode) {
 case 129:
  return regmap_write(flash->regmap,
        REG_ENABLE, flash->mode_reg | MODE_SHDN);
 case 128:
  return regmap_write(flash->regmap,
        REG_ENABLE, flash->mode_reg | MODE_TORCH);
 case 130:
  return regmap_write(flash->regmap,
        REG_ENABLE, flash->mode_reg | MODE_FLASH);
 }
 return -EINVAL;
}
