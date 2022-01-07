
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {struct mmc_host* mmc; struct tmio_mmc_data* pdata; } ;
struct tmio_mmc_data {scalar_t__ ocr_mask; } ;
struct mmc_host {scalar_t__ ocr_avail; } ;


 int EPROBE_DEFER ;
 int mmc_regulator_get_supply (struct mmc_host*) ;

__attribute__((used)) static int tmio_mmc_init_ocr(struct tmio_mmc_host *host)
{
 struct tmio_mmc_data *pdata = host->pdata;
 struct mmc_host *mmc = host->mmc;
 int err;

 err = mmc_regulator_get_supply(mmc);
 if (err)
  return err;


 if (!mmc->ocr_avail)
  mmc->ocr_avail = pdata->ocr_mask;





 if (!mmc->ocr_avail)
  return -EPROBE_DEFER;

 return 0;
}
