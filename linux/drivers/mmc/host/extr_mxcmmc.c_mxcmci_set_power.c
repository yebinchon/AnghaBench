
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mxcmci_host {scalar_t__ power_mode; TYPE_3__* mmc; TYPE_1__* pdata; } ;
struct TYPE_6__ {int vmmc; } ;
struct TYPE_7__ {TYPE_2__ supply; } ;
struct TYPE_5__ {int (* setpower ) (int ,unsigned int) ;} ;


 int IS_ERR (int ) ;
 scalar_t__ MMC_POWER_OFF ;
 scalar_t__ MMC_POWER_UP ;
 int mmc_dev (TYPE_3__*) ;
 int mmc_regulator_set_ocr (TYPE_3__*,int ,unsigned int) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static void mxcmci_set_power(struct mxcmci_host *host, unsigned int vdd)
{
 if (!IS_ERR(host->mmc->supply.vmmc)) {
  if (host->power_mode == MMC_POWER_UP)
   mmc_regulator_set_ocr(host->mmc,
           host->mmc->supply.vmmc, vdd);
  else if (host->power_mode == MMC_POWER_OFF)
   mmc_regulator_set_ocr(host->mmc,
           host->mmc->supply.vmmc, 0);
 }

 if (host->pdata && host->pdata->setpower)
  host->pdata->setpower(mmc_dev(host->mmc), vdd);
}
