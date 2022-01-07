
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbs_private {struct if_sdio_card* card; } ;
struct if_sdio_card {TYPE_2__* func; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int host; } ;


 int card_reset_work ;
 int reset_host ;
 int schedule_work (int *) ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static void if_sdio_reset_card(struct lbs_private *priv)
{
 struct if_sdio_card *card = priv->card;

 if (work_pending(&card_reset_work))
  return;

 reset_host = card->func->card->host;
 schedule_work(&card_reset_work);
}
