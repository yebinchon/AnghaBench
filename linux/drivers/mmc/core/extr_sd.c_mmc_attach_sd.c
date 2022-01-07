
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int * card; scalar_t__ ocr_avail_sd; scalar_t__ ocr_avail; int claimed; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 int mmc_add_card (int *) ;
 int mmc_attach_bus (struct mmc_host*,int *) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 int mmc_go_idle (struct mmc_host*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_remove_card (int *) ;
 int mmc_sd_init_card (struct mmc_host*,int,int *) ;
 int mmc_sd_ops ;
 int mmc_select_voltage (struct mmc_host*,int) ;
 int mmc_send_app_op_cond (struct mmc_host*,int ,int*) ;
 int mmc_spi_read_ocr (struct mmc_host*,int ,int*) ;
 int pr_err (char*,int ,int) ;

int mmc_attach_sd(struct mmc_host *host)
{
 int err;
 u32 ocr, rocr;

 WARN_ON(!host->claimed);

 err = mmc_send_app_op_cond(host, 0, &ocr);
 if (err)
  return err;

 mmc_attach_bus(host, &mmc_sd_ops);
 if (host->ocr_avail_sd)
  host->ocr_avail = host->ocr_avail_sd;




 if (mmc_host_is_spi(host)) {
  mmc_go_idle(host);

  err = mmc_spi_read_ocr(host, 0, &ocr);
  if (err)
   goto err;
 }





 ocr &= ~0x7FFF;

 rocr = mmc_select_voltage(host, ocr);




 if (!rocr) {
  err = -EINVAL;
  goto err;
 }




 err = mmc_sd_init_card(host, rocr, ((void*)0));
 if (err)
  goto err;

 mmc_release_host(host);
 err = mmc_add_card(host->card);
 if (err)
  goto remove_card;

 mmc_claim_host(host);
 return 0;

remove_card:
 mmc_remove_card(host->card);
 host->card = ((void*)0);
 mmc_claim_host(host);
err:
 mmc_detach_bus(host);

 pr_err("%s: error %d whilst initialising SD card\n",
  mmc_hostname(host), err);

 return err;
}
