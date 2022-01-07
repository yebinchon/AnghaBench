
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hi655x_pmic {int irq_data; int gpio; } ;


 int gpio_to_irq (int ) ;
 int mfd_remove_devices (int *) ;
 struct hi655x_pmic* platform_get_drvdata (struct platform_device*) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int hi655x_pmic_remove(struct platform_device *pdev)
{
 struct hi655x_pmic *pmic = platform_get_drvdata(pdev);

 regmap_del_irq_chip(gpio_to_irq(pmic->gpio), pmic->irq_data);
 mfd_remove_devices(&pdev->dev);
 return 0;
}
