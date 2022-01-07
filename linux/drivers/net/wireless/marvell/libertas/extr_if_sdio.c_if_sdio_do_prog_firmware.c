
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {struct if_sdio_card* card; } ;
struct if_sdio_card {int dummy; } ;
struct firmware {int dummy; } ;


 int if_sdio_finish_power_on (struct if_sdio_card*) ;
 int if_sdio_prog_helper (struct if_sdio_card*,struct firmware const*) ;
 int if_sdio_prog_real (struct if_sdio_card*,struct firmware const*) ;
 int lbs_deb_sdio (char*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void if_sdio_do_prog_firmware(struct lbs_private *priv, int ret,
         const struct firmware *helper,
         const struct firmware *mainfw)
{
 struct if_sdio_card *card = priv->card;

 if (ret) {
  pr_err("failed to find firmware (%d)\n", ret);
  return;
 }

 ret = if_sdio_prog_helper(card, helper);
 if (ret)
  return;

 lbs_deb_sdio("Helper firmware loaded\n");

 ret = if_sdio_prog_real(card, mainfw);
 if (ret)
  return;

 lbs_deb_sdio("Firmware loaded\n");
 if_sdio_finish_power_on(card);
}
