
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct lbs_private {scalar_t__ fw_ready; } ;
struct if_sdio_card {struct lbs_private* priv; struct sdio_func* func; } ;


 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;

__attribute__((used)) static int if_sdio_power_off(struct if_sdio_card *card)
{
 struct sdio_func *func = card->func;
 struct lbs_private *priv = card->priv;

 priv->fw_ready = 0;

 sdio_claim_host(func);
 sdio_release_irq(func);
 sdio_disable_func(func);
 sdio_release_host(func);
 return 0;
}
