
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {int dummy; } ;
struct if_sdio_card {TYPE_1__* priv; int pwron_waitq; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int fw_ready; scalar_t__ power_up_on_resume; } ;


 int dev_info (struct device*,char*,int ) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int if_sdio_power_on (struct if_sdio_card*) ;
 int lbs_resume (TYPE_1__*) ;
 int sdio_func_id (struct sdio_func*) ;
 struct if_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int if_sdio_resume(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct if_sdio_card *card = sdio_get_drvdata(func);
 int ret;

 dev_info(dev, "%s: resume: we're back\n", sdio_func_id(func));

 if (card->priv->power_up_on_resume) {
  if_sdio_power_on(card);
  wait_event(card->pwron_waitq, card->priv->fw_ready);
 }

 ret = lbs_resume(card->priv);

 return ret;
}
