
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int fw_ready; struct if_sdio_card* card; } ;
struct if_sdio_card {int pwron_waitq; TYPE_1__* func; } ;
struct TYPE_2__ {int dev; } ;


 int if_sdio_power_on (struct if_sdio_card*) ;
 int pm_runtime_get_sync (int *) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int if_sdio_power_restore(struct lbs_private *priv)
{
 struct if_sdio_card *card = priv->card;
 int r;


 pm_runtime_get_sync(&card->func->dev);

 r = if_sdio_power_on(card);
 if (r)
  return r;

 wait_event(card->pwron_waitq, priv->fw_ready);
 return 0;
}
