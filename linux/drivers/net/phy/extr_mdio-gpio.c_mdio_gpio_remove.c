
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int mdio_gpio_bus_destroy (int *) ;

__attribute__((used)) static int mdio_gpio_remove(struct platform_device *pdev)
{
 mdio_gpio_bus_destroy(&pdev->dev);

 return 0;
}
