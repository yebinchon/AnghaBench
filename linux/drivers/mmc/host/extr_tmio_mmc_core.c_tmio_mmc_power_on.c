
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_mmc_host {TYPE_2__* pdev; int (* set_pwr ) (TYPE_2__*,int) ;struct mmc_host* mmc; } ;
struct TYPE_3__ {int vqmmc; int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct TYPE_4__ {int dev; } ;


 int IS_ERR (int ) ;
 int dev_dbg (int *,char*,int) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,unsigned short) ;
 int regulator_enable (int ) ;
 int stub1 (TYPE_2__*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tmio_mmc_power_on(struct tmio_mmc_host *host, unsigned short vdd)
{
 struct mmc_host *mmc = host->mmc;
 int ret = 0;



 if (host->set_pwr)
  host->set_pwr(host->pdev, 1);

 if (!IS_ERR(mmc->supply.vmmc)) {
  ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);






  usleep_range(200, 300);
 }




 if (!IS_ERR(mmc->supply.vqmmc) && !ret) {
  ret = regulator_enable(mmc->supply.vqmmc);
  usleep_range(200, 300);
 }

 if (ret < 0)
  dev_dbg(&host->pdev->dev, "Regulators failed to power up: %d\n",
   ret);
}
