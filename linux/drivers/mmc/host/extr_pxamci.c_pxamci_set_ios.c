
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxamci_host {unsigned long clkrate; scalar_t__ clkrt; int cmdat; int power_mode; int clk; } ;
struct mmc_ios {int clock; scalar_t__ bus_width; int power_mode; int vdd; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ CLKRT_OFF ;
 int CMDAT_INIT ;
 int CMDAT_SD_4DAT ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 int MMC_POWER_ON ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int dev_err (int ,char*) ;
 int fls (unsigned int) ;
 int mmc_dev (struct mmc_host*) ;
 struct pxamci_host* mmc_priv (struct mmc_host*) ;
 int pxamci_set_power (struct pxamci_host*,int ,int ) ;
 int pxamci_stop_clock (struct pxamci_host*) ;

__attribute__((used)) static void pxamci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct pxamci_host *host = mmc_priv(mmc);

 if (ios->clock) {
  unsigned long rate = host->clkrate;
  unsigned int clk = rate / ios->clock;

  if (host->clkrt == CLKRT_OFF)
   clk_prepare_enable(host->clk);

  if (ios->clock == 26000000) {

   host->clkrt = 7;
  } else {

   if (!clk)
    clk = 1;






   if (rate / clk > ios->clock)
    clk <<= 1;
   host->clkrt = fls(clk) - 1;
  }




 } else {
  pxamci_stop_clock(host);
  if (host->clkrt != CLKRT_OFF) {
   host->clkrt = CLKRT_OFF;
   clk_disable_unprepare(host->clk);
  }
 }

 if (host->power_mode != ios->power_mode) {
  int ret;

  host->power_mode = ios->power_mode;

  ret = pxamci_set_power(host, ios->power_mode, ios->vdd);
  if (ret) {
   dev_err(mmc_dev(mmc), "unable to set power\n");






   return;
  }

  if (ios->power_mode == MMC_POWER_ON)
   host->cmdat |= CMDAT_INIT;
 }

 if (ios->bus_width == MMC_BUS_WIDTH_4)
  host->cmdat |= CMDAT_SD_4DAT;
 else
  host->cmdat &= ~CMDAT_SD_4DAT;

 dev_dbg(mmc_dev(mmc), "PXAMCI: clkrt = %x cmdat = %x\n",
  host->clkrt, host->cmdat);
}
