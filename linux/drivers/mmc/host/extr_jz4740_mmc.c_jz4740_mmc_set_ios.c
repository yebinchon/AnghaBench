
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {int power_mode; int bus_width; int vdd; int clock; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct jz4740_mmc_host {int cmdat; int clk; } ;


 int IS_ERR (int ) ;
 int JZ_MMC_CMDAT_BUS_WIDTH_4BIT ;
 int JZ_MMC_CMDAT_INIT ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int jz4740_mmc_reset (struct jz4740_mmc_host*) ;
 int jz4740_mmc_set_clock_rate (struct jz4740_mmc_host*,int ) ;
 struct jz4740_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;

__attribute__((used)) static void jz4740_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct jz4740_mmc_host *host = mmc_priv(mmc);
 if (ios->clock)
  jz4740_mmc_set_clock_rate(host, ios->clock);

 switch (ios->power_mode) {
 case 128:
  jz4740_mmc_reset(host);
  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, ios->vdd);
  host->cmdat |= JZ_MMC_CMDAT_INIT;
  clk_prepare_enable(host->clk);
  break;
 case 129:
  break;
 default:
  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);
  clk_disable_unprepare(host->clk);
  break;
 }

 switch (ios->bus_width) {
 case 131:
  host->cmdat &= ~JZ_MMC_CMDAT_BUS_WIDTH_4BIT;
  break;
 case 130:
  host->cmdat |= JZ_MMC_CMDAT_BUS_WIDTH_4BIT;
  break;
 default:
  break;
 }
}
