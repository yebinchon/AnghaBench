
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secocec_data {int irq; struct device* dev; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int GPIOF_IN ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*) ;
 struct gpio_desc* devm_gpiod_get (struct device*,int *,int ) ;
 int gpiod_to_irq (struct gpio_desc*) ;

__attribute__((used)) static int secocec_acpi_probe(struct secocec_data *sdev)
{
 struct device *dev = sdev->dev;
 struct gpio_desc *gpio;
 int irq = 0;

 gpio = devm_gpiod_get(dev, ((void*)0), GPIOF_IN);
 if (IS_ERR(gpio)) {
  dev_err(dev, "Cannot request interrupt gpio");
  return PTR_ERR(gpio);
 }

 irq = gpiod_to_irq(gpio);
 if (irq < 0) {
  dev_err(dev, "Cannot find valid irq");
  return -ENODEV;
 }
 dev_dbg(dev, "irq-gpio is bound to IRQ %d", irq);

 sdev->irq = irq;

 return 0;
}
