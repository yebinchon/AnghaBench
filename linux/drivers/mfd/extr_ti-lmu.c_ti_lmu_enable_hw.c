
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lmu {int regmap; scalar_t__ en_gpio; } ;
typedef enum ti_lmu_id { ____Placeholder_ti_lmu_id } ti_lmu_id ;


 int LM3631 ;
 int LM3631_LCD_EN_MASK ;
 int LM3631_REG_DEVCTRL ;
 int gpiod_set_value (scalar_t__,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ti_lmu_enable_hw(struct ti_lmu *lmu, enum ti_lmu_id id)
{
 if (lmu->en_gpio)
  gpiod_set_value(lmu->en_gpio, 1);


 usleep_range(1000, 1500);


 if (id == LM3631) {
  return regmap_update_bits(lmu->regmap, LM3631_REG_DEVCTRL,
       LM3631_LCD_EN_MASK,
       LM3631_LCD_EN_MASK);
 }

 return 0;
}
