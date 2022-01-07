
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dev; } ;
struct lbs_private {int fw_ready; int dev; } ;
struct if_sdio_card {scalar_t__ model; int started; int pwron_waitq; scalar_t__ rx_unit; struct sdio_func* func; struct lbs_private* priv; } ;
struct cmd_header {int dummy; } ;
typedef int cmd ;


 int CMD_FUNC_INIT ;
 int IF_SDIO_BLOCK_SIZE ;
 int IF_SDIO_H_INT_MASK ;
 scalar_t__ MODEL_8385 ;
 scalar_t__ MODEL_8686 ;
 scalar_t__ MODEL_8688 ;
 scalar_t__ __lbs_cmd (struct lbs_private*,int ,struct cmd_header*,int,int ,unsigned long) ;
 int if_sdio_interrupt ;
 int if_sdio_power_off (struct if_sdio_card*) ;
 scalar_t__ if_sdio_read_rx_unit (struct if_sdio_card*) ;
 int lbs_cmd_copyback ;
 int lbs_deb_sdio (char*) ;
 int lbs_start_card (struct lbs_private*) ;
 int memset (struct cmd_header*,int ,int) ;
 int netdev_alert (int ,char*) ;
 int pm_runtime_put (int *) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_claim_irq (struct sdio_func*,int ) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,int ) ;
 int sdio_writeb (struct sdio_func*,int,int ,int*) ;
 int wake_up (int *) ;

__attribute__((used)) static void if_sdio_finish_power_on(struct if_sdio_card *card)
{
 struct sdio_func *func = card->func;
 struct lbs_private *priv = card->priv;
 int ret;

 sdio_claim_host(func);
 sdio_set_block_size(card->func, IF_SDIO_BLOCK_SIZE);





 if ((card->model != MODEL_8385)
   && (card->model != MODEL_8686))
  card->rx_unit = if_sdio_read_rx_unit(card);
 else
  card->rx_unit = 0;
 ret = sdio_claim_irq(func, if_sdio_interrupt);
 if (ret)
  goto release;




 sdio_writeb(func, 0x0f, IF_SDIO_H_INT_MASK, &ret);
 if (ret)
  goto release_irq;

 sdio_release_host(func);




 priv->fw_ready = 1;




 if (card->model == MODEL_8688) {
  struct cmd_header cmd;

  memset(&cmd, 0, sizeof(cmd));

  lbs_deb_sdio("send function INIT command\n");
  if (__lbs_cmd(priv, CMD_FUNC_INIT, &cmd, sizeof(cmd),
    lbs_cmd_copyback, (unsigned long) &cmd))
   netdev_alert(priv->dev, "CMD_FUNC_INIT cmd failed\n");
 }

 wake_up(&card->pwron_waitq);

 if (!card->started) {
  ret = lbs_start_card(priv);
  if_sdio_power_off(card);
  if (ret == 0) {
   card->started = 1;


   pm_runtime_put(&func->dev);
  }
 }

 return;

release_irq:
 sdio_release_irq(func);
release:
 sdio_release_host(func);
}
