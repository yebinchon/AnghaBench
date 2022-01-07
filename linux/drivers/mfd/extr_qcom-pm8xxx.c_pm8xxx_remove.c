
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int irqdomain; } ;
struct platform_device {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int irq_domain_remove (int ) ;
 int irq_set_chained_handler_and_data (int,int *,int *) ;
 struct pm_irq_chip* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm8xxx_remove_child ;

__attribute__((used)) static int pm8xxx_remove(struct platform_device *pdev)
{
 int irq = platform_get_irq(pdev, 0);
 struct pm_irq_chip *chip = platform_get_drvdata(pdev);

 device_for_each_child(&pdev->dev, ((void*)0), pm8xxx_remove_child);
 irq_set_chained_handler_and_data(irq, ((void*)0), ((void*)0));
 irq_domain_remove(chip->irqdomain);

 return 0;
}
