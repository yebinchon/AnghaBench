
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usdhi6_host {struct mmc_host* mmc; } ;
struct mmc_ios {int vdd; scalar_t__ power_mode; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;

__attribute__((used)) static void usdhi6_set_power(struct usdhi6_host *host, struct mmc_ios *ios)
{
 struct mmc_host *mmc = host->mmc;

 if (!IS_ERR(mmc->supply.vmmc))

  mmc_regulator_set_ocr(mmc, mmc->supply.vmmc,
          ios->power_mode ? ios->vdd : 0);
}
