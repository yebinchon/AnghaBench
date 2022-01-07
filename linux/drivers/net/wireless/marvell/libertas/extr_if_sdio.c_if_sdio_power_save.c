
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {struct if_sdio_card* card; } ;
struct if_sdio_card {TYPE_1__* func; int workqueue; } ;
struct TYPE_2__ {int dev; } ;


 int flush_workqueue (int ) ;
 int if_sdio_power_off (struct if_sdio_card*) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int if_sdio_power_save(struct lbs_private *priv)
{
 struct if_sdio_card *card = priv->card;
 int ret;

 flush_workqueue(card->workqueue);

 ret = if_sdio_power_off(card);


 pm_runtime_put_sync(&card->func->dev);

 return ret;
}
