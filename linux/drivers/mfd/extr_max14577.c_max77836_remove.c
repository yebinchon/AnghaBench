
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577 {int i2c_pmic; int irq_data_pmic; int irq; } ;


 int i2c_unregister_device (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static void max77836_remove(struct max14577 *max14577)
{
 regmap_del_irq_chip(max14577->irq, max14577->irq_data_pmic);
 i2c_unregister_device(max14577->i2c_pmic);
}
