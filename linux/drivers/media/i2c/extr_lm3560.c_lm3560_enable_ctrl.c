
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3560_flash {int regmap; } ;
typedef enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;


 int LM3560_LED0 ;
 int REG_ENABLE ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int lm3560_enable_ctrl(struct lm3560_flash *flash,
         enum lm3560_led_id led_no, bool on)
{
 int rval;

 if (led_no == LM3560_LED0) {
  if (on)
   rval = regmap_update_bits(flash->regmap,
        REG_ENABLE, 0x08, 0x08);
  else
   rval = regmap_update_bits(flash->regmap,
        REG_ENABLE, 0x08, 0x00);
 } else {
  if (on)
   rval = regmap_update_bits(flash->regmap,
        REG_ENABLE, 0x10, 0x10);
  else
   rval = regmap_update_bits(flash->regmap,
        REG_ENABLE, 0x10, 0x00);
 }
 return rval;
}
