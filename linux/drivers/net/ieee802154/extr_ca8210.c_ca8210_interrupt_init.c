
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_platform_data {int gpio_irq; scalar_t__ irq_id; } ;


 int IRQF_TRIGGER_FALLING ;
 int ca8210_interrupt_handler ;
 int dev_crit (TYPE_1__*,char*,int) ;
 int gpio_free (int) ;
 scalar_t__ gpio_to_irq (int) ;
 int gpio_unexport (int) ;
 int of_get_named_gpio (int ,char*,int ) ;
 int request_irq (int,int ,int ,char*,int ) ;
 int spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ca8210_interrupt_init(struct spi_device *spi)
{
 int ret;
 struct ca8210_platform_data *pdata = spi->dev.platform_data;

 pdata->gpio_irq = of_get_named_gpio(
  spi->dev.of_node,
  "irq-gpio",
  0
 );

 pdata->irq_id = gpio_to_irq(pdata->gpio_irq);
 if (pdata->irq_id < 0) {
  dev_crit(
   &spi->dev,
   "Could not get irq for gpio pin %d\n",
   pdata->gpio_irq
  );
  gpio_free(pdata->gpio_irq);
  return pdata->irq_id;
 }

 ret = request_irq(
  pdata->irq_id,
  ca8210_interrupt_handler,
  IRQF_TRIGGER_FALLING,
  "ca8210-irq",
  spi_get_drvdata(spi)
 );
 if (ret) {
  dev_crit(&spi->dev, "request_irq %d failed\n", pdata->irq_id);
  gpio_unexport(pdata->gpio_irq);
  gpio_free(pdata->gpio_irq);
 }

 return ret;
}
