
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int * card; scalar_t__ ocr_avail_mmc; scalar_t__ ocr_avail; int claimed; } ;


 int EINVAL ;
 int MMC_BUSMODE_OPENDRAIN ;
 int WARN_ON (int) ;
 int mmc_add_card (int *) ;
 int mmc_attach_bus (struct mmc_host*,int *) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_init_card (struct mmc_host*,int ,int *) ;
 int mmc_ops ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_remove_card (int *) ;
 int mmc_select_voltage (struct mmc_host*,int ) ;
 int mmc_send_op_cond (struct mmc_host*,int ,int *) ;
 int mmc_set_bus_mode (struct mmc_host*,int ) ;
 int mmc_spi_read_ocr (struct mmc_host*,int,int *) ;
 int pr_err (char*,int ,int) ;

int mmc_attach_mmc(struct mmc_host *host)
{
 int err;
 u32 ocr, rocr;

 WARN_ON(!host->claimed);


 if (!mmc_host_is_spi(host))
  mmc_set_bus_mode(host, MMC_BUSMODE_OPENDRAIN);

 err = mmc_send_op_cond(host, 0, &ocr);
 if (err)
  return err;

 mmc_attach_bus(host, &mmc_ops);
 if (host->ocr_avail_mmc)
  host->ocr_avail = host->ocr_avail_mmc;




 if (mmc_host_is_spi(host)) {
  err = mmc_spi_read_ocr(host, 1, &ocr);
  if (err)
   goto err;
 }

 rocr = mmc_select_voltage(host, ocr);




 if (!rocr) {
  err = -EINVAL;
  goto err;
 }




 err = mmc_init_card(host, rocr, ((void*)0));
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
 mmc_claim_host(host);
 host->card = ((void*)0);
err:
 mmc_detach_bus(host);

 pr_err("%s: error %d whilst initialising MMC card\n",
  mmc_hostname(host), err);

 return err;
}
