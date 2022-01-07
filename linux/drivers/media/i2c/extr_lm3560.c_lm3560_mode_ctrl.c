
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3560_flash {int led_mode; int regmap; } ;


 int EINVAL ;
 int MODE_FLASH ;
 int MODE_SHDN ;
 int MODE_TORCH ;
 int REG_ENABLE ;



 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int lm3560_mode_ctrl(struct lm3560_flash *flash)
{
 int rval = -EINVAL;

 switch (flash->led_mode) {
 case 129:
  rval = regmap_update_bits(flash->regmap,
       REG_ENABLE, 0x03, MODE_SHDN);
  break;
 case 128:
  rval = regmap_update_bits(flash->regmap,
       REG_ENABLE, 0x03, MODE_TORCH);
  break;
 case 130:
  rval = regmap_update_bits(flash->regmap,
       REG_ENABLE, 0x03, MODE_FLASH);
  break;
 }
 return rval;
}
