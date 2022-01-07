
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dev; struct if_sdio_card* card; } ;
struct if_sdio_card {int func; } ;


 int CONFIGURATION_REG ;
 int netdev_err (int ,char*) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int sdio_writeb (int ,int ,int ,int*) ;

__attribute__((used)) static int if_sdio_reset_deep_sleep_wakeup(struct lbs_private *priv)
{
 struct if_sdio_card *card = priv->card;
 int ret = -1;

 sdio_claim_host(card->func);

 sdio_writeb(card->func, 0, CONFIGURATION_REG, &ret);
 if (ret)
  netdev_err(priv->dev, "sdio_writeb failed!\n");

 sdio_release_host(card->func);

 return ret;

}
