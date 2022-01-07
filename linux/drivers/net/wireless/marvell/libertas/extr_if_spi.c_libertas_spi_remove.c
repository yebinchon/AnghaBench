
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int irq; } ;
struct lbs_private {int dummy; } ;
struct if_spi_card {TYPE_1__* pdata; int workqueue; int resume_work; struct lbs_private* priv; } ;
struct TYPE_2__ {int (* teardown ) (struct spi_device*) ;} ;


 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int free_if_spi_card (struct if_spi_card*) ;
 int free_irq (int ,struct if_spi_card*) ;
 int lbs_deb_spi (char*) ;
 int lbs_remove_card (struct lbs_private*) ;
 int lbs_stop_card (struct lbs_private*) ;
 struct if_spi_card* spi_get_drvdata (struct spi_device*) ;
 int stub1 (struct spi_device*) ;

__attribute__((used)) static int libertas_spi_remove(struct spi_device *spi)
{
 struct if_spi_card *card = spi_get_drvdata(spi);
 struct lbs_private *priv = card->priv;

 lbs_deb_spi("libertas_spi_remove\n");

 cancel_work_sync(&card->resume_work);

 lbs_stop_card(priv);
 lbs_remove_card(priv);

 free_irq(spi->irq, card);
 destroy_workqueue(card->workqueue);
 if (card->pdata->teardown)
  card->pdata->teardown(spi);
 free_if_spi_card(card);

 return 0;
}
