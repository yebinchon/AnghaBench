
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct if_sdio_card {scalar_t__ model; TYPE_1__* func; int priv; } ;
struct TYPE_4__ {int dev; } ;


 int IF_SDIO_FIRMWARE_OK ;
 int IF_SDIO_H_INT_MASK ;
 scalar_t__ MODEL_8686 ;
 int fw_table ;
 int if_sdio_do_prog_firmware ;
 int if_sdio_finish_power_on (struct if_sdio_card*) ;
 int if_sdio_read_scratch (struct if_sdio_card*,int*) ;
 int lbs_deb_sdio (char*,...) ;
 int lbs_get_firmware_async (int ,int *,scalar_t__,int ,int ) ;
 int sdio_claim_host (TYPE_1__*) ;
 int sdio_release_host (TYPE_1__*) ;
 int sdio_writeb (TYPE_1__*,int,int ,int*) ;

__attribute__((used)) static int if_sdio_prog_firmware(struct if_sdio_card *card)
{
 int ret;
 u16 scratch;




 sdio_claim_host(card->func);
 sdio_writeb(card->func, 0x00, IF_SDIO_H_INT_MASK, &ret);
 sdio_release_host(card->func);

 sdio_claim_host(card->func);
 scratch = if_sdio_read_scratch(card, &ret);
 sdio_release_host(card->func);

 lbs_deb_sdio("firmware status = %#x\n", scratch);
 lbs_deb_sdio("scratch ret = %d\n", ret);

 if (ret)
  goto out;
 if (scratch == IF_SDIO_FIRMWARE_OK) {
  lbs_deb_sdio("firmware already loaded\n");
  if_sdio_finish_power_on(card);
  return 0;
 } else if ((card->model == MODEL_8686) && (scratch & 0x7fff)) {
  lbs_deb_sdio("firmware may be running\n");
  if_sdio_finish_power_on(card);
  return 0;
 }

 ret = lbs_get_firmware_async(card->priv, &card->func->dev, card->model,
         fw_table, if_sdio_do_prog_firmware);

out:
 return ret;
}
