
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {int caps; struct mmc_card* card; scalar_t__ ocr_avail_sdio; scalar_t__ ocr_avail; int claimed; } ;
struct mmc_card {int dev; TYPE_1__** sdio_func; scalar_t__ sdio_funcs; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int MMC_CAP_POWER_OFF_CARD ;
 int WARN_ON (int) ;
 int mmc_add_card (struct mmc_card*) ;
 int mmc_attach_bus (struct mmc_host*,int *) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_sdio_init_card (struct mmc_host*,int,int *) ;
 int mmc_sdio_ops ;
 int mmc_sdio_remove (struct mmc_host*) ;
 int mmc_select_voltage (struct mmc_host*,int) ;
 int mmc_send_io_op_cond (struct mmc_host*,int ,int*) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_set_active (int *) ;
 int pr_err (char*,int ,int) ;
 int sdio_add_func (TYPE_1__*) ;
 int sdio_init_func (struct mmc_card*,int) ;

int mmc_attach_sdio(struct mmc_host *host)
{
 int err, i, funcs;
 u32 ocr, rocr;
 struct mmc_card *card;

 WARN_ON(!host->claimed);

 err = mmc_send_io_op_cond(host, 0, &ocr);
 if (err)
  return err;

 mmc_attach_bus(host, &mmc_sdio_ops);
 if (host->ocr_avail_sdio)
  host->ocr_avail = host->ocr_avail_sdio;


 rocr = mmc_select_voltage(host, ocr);




 if (!rocr) {
  err = -EINVAL;
  goto err;
 }




 err = mmc_sdio_init_card(host, rocr, ((void*)0));
 if (err)
  goto err;

 card = host->card;




 if (host->caps & MMC_CAP_POWER_OFF_CARD) {




  pm_runtime_get_noresume(&card->dev);




  err = pm_runtime_set_active(&card->dev);
  if (err)
   goto remove;




  pm_runtime_enable(&card->dev);
 }





 funcs = (ocr & 0x70000000) >> 28;
 card->sdio_funcs = 0;




 for (i = 0; i < funcs; i++, card->sdio_funcs++) {
  err = sdio_init_func(host->card, i + 1);
  if (err)
   goto remove;




  if (host->caps & MMC_CAP_POWER_OFF_CARD)
   pm_runtime_enable(&card->sdio_func[i]->dev);
 }




 mmc_release_host(host);
 err = mmc_add_card(host->card);
 if (err)
  goto remove_added;




 for (i = 0;i < funcs;i++) {
  err = sdio_add_func(host->card->sdio_func[i]);
  if (err)
   goto remove_added;
 }

 if (host->caps & MMC_CAP_POWER_OFF_CARD)
  pm_runtime_put(&card->dev);

 mmc_claim_host(host);
 return 0;


remove:
 mmc_release_host(host);
remove_added:






 mmc_sdio_remove(host);
 mmc_claim_host(host);
err:
 mmc_detach_bus(host);

 pr_err("%s: error %d whilst initialising SDIO card\n",
  mmc_hostname(host), err);

 return err;
}
