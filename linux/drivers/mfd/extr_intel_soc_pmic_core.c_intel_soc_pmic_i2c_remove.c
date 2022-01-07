
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_pmic {int irq_chip_data; int irq; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int crc_pwm_lookup ;
 struct intel_soc_pmic* dev_get_drvdata (int *) ;
 int gpiod_remove_lookup_table (int *) ;
 int mfd_remove_devices (int *) ;
 int panel_gpio_table ;
 int pwm_remove_table (int ,int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int intel_soc_pmic_i2c_remove(struct i2c_client *i2c)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(&i2c->dev);

 regmap_del_irq_chip(pmic->irq, pmic->irq_chip_data);


 gpiod_remove_lookup_table(&panel_gpio_table);


 pwm_remove_table(crc_pwm_lookup, ARRAY_SIZE(crc_pwm_lookup));

 mfd_remove_devices(&i2c->dev);

 return 0;
}
