
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int irq; } ;
struct if_spi_card {int suspended; TYPE_1__* pdata; int workqueue; int priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* teardown ) (struct spi_device*) ;} ;


 int disable_irq (int ) ;
 int flush_workqueue (int ) ;
 int lbs_suspend (int ) ;
 struct if_spi_card* spi_get_drvdata (struct spi_device*) ;
 int stub1 (struct spi_device*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int if_spi_suspend(struct device *dev)
{
 struct spi_device *spi = to_spi_device(dev);
 struct if_spi_card *card = spi_get_drvdata(spi);

 if (!card->suspended) {
  lbs_suspend(card->priv);
  flush_workqueue(card->workqueue);
  disable_irq(spi->irq);

  if (card->pdata->teardown)
   card->pdata->teardown(spi);
  card->suspended = 1;
 }

 return 0;
}
