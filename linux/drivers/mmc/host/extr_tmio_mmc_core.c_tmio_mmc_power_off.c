
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int pdev; int (* set_pwr ) (int ,int ) ;struct mmc_host* mmc; } ;
struct TYPE_2__ {int vmmc; int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int regulator_disable (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void tmio_mmc_power_off(struct tmio_mmc_host *host)
{
 struct mmc_host *mmc = host->mmc;

 if (!IS_ERR(mmc->supply.vqmmc))
  regulator_disable(mmc->supply.vqmmc);

 if (!IS_ERR(mmc->supply.vmmc))
  mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

 if (host->set_pwr)
  host->set_pwr(host->pdev, 0);
}
