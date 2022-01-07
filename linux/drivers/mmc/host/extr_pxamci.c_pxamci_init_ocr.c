
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxamci_host {TYPE_2__* pdata; struct mmc_host* mmc; } ;
struct TYPE_3__ {int vmmc; } ;
struct mmc_host {int ocr_avail; TYPE_1__ supply; } ;
struct TYPE_4__ {int ocr_mask; } ;


 scalar_t__ IS_ERR (int ) ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int mmc_regulator_get_supply (struct mmc_host*) ;

__attribute__((used)) static int pxamci_init_ocr(struct pxamci_host *host)
{
 struct mmc_host *mmc = host->mmc;
 int ret;

 ret = mmc_regulator_get_supply(mmc);
 if (ret < 0)
  return ret;

 if (IS_ERR(mmc->supply.vmmc)) {

  mmc->ocr_avail = host->pdata ?
   host->pdata->ocr_mask :
   MMC_VDD_32_33 | MMC_VDD_33_34;
 }

 return 0;
}
