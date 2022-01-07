
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_mmc_card {int work_flags; struct sdio_func* func; } ;
struct sdio_func {int dev; TYPE_1__* card; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int host; } ;


 int MWIFIEX_IFACE_WORK_CARD_RESET ;
 int MWIFIEX_IFACE_WORK_DEVICE_DUMP ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int mmc_hw_reset (int ) ;
 int mwifiex_reinit_sw (struct mwifiex_adapter*) ;
 int mwifiex_shutdown_sw (struct mwifiex_adapter*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;

__attribute__((used)) static void mwifiex_sdio_card_reset_work(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;
 struct sdio_func *func = card->func;
 int ret;

 mwifiex_shutdown_sw(adapter);


 sdio_claim_host(func);
 mmc_hw_reset(func->card->host);
 sdio_release_host(func);




 clear_bit(MWIFIEX_IFACE_WORK_DEVICE_DUMP, &card->work_flags);
 clear_bit(MWIFIEX_IFACE_WORK_CARD_RESET, &card->work_flags);

 ret = mwifiex_reinit_sw(adapter);
 if (ret)
  dev_err(&func->dev, "reinit failed: %d\n", ret);
}
