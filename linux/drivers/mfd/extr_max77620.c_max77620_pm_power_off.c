
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_chip {int rmap; } ;


 int MAX77620_ONOFFCNFG1_SFT_RST ;
 int MAX77620_REG_ONOFFCNFG1 ;
 struct max77620_chip* max77620_scratch ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void max77620_pm_power_off(void)
{
 struct max77620_chip *chip = max77620_scratch;

 regmap_update_bits(chip->rmap, MAX77620_REG_ONOFFCNFG1,
      MAX77620_ONOFFCNFG1_SFT_RST,
      MAX77620_ONOFFCNFG1_SFT_RST);
}
