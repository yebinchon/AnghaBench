
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int burstlen; scalar_t__ power_mode; int clock; int cmdat; int * dma; scalar_t__ do_dma; int mmc; } ;
struct mmc_ios {scalar_t__ bus_width; scalar_t__ power_mode; int clock; int vdd; } ;
struct mmc_host {int dummy; } ;


 int CMD_DAT_CONT_BUS_WIDTH_4 ;
 int CMD_DAT_CONT_INIT ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_POWER_ON ;
 int MMC_REG_STR_STP_CLK ;
 int STR_STP_CLK_START_CLK ;
 int STR_STP_CLK_STOP_CLK ;
 int dev_err (int ,char*) ;
 int dma_release_channel (int *) ;
 int mmc_dev (int ) ;
 struct mxcmci_host* mmc_priv (struct mmc_host*) ;
 int mxcmci_set_clk_rate (struct mxcmci_host*,int ) ;
 int mxcmci_set_power (struct mxcmci_host*,int ) ;
 int mxcmci_setup_dma (struct mmc_host*) ;
 scalar_t__ mxcmci_use_dma (struct mxcmci_host*) ;
 int mxcmci_writew (struct mxcmci_host*,int ,int ) ;

__attribute__((used)) static void mxcmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mxcmci_host *host = mmc_priv(mmc);
 int burstlen, ret;





 if (ios->bus_width == MMC_BUS_WIDTH_4)
  burstlen = 16;
 else
  burstlen = 4;

 if (mxcmci_use_dma(host) && burstlen != host->burstlen) {
  host->burstlen = burstlen;
  ret = mxcmci_setup_dma(mmc);
  if (ret) {
   dev_err(mmc_dev(host->mmc),
    "failed to config DMA channel. Falling back to PIO\n");
   dma_release_channel(host->dma);
   host->do_dma = 0;
   host->dma = ((void*)0);
  }
 }

 if (ios->bus_width == MMC_BUS_WIDTH_4)
  host->cmdat |= CMD_DAT_CONT_BUS_WIDTH_4;
 else
  host->cmdat &= ~CMD_DAT_CONT_BUS_WIDTH_4;

 if (host->power_mode != ios->power_mode) {
  host->power_mode = ios->power_mode;
  mxcmci_set_power(host, ios->vdd);

  if (ios->power_mode == MMC_POWER_ON)
   host->cmdat |= CMD_DAT_CONT_INIT;
 }

 if (ios->clock) {
  mxcmci_set_clk_rate(host, ios->clock);
  mxcmci_writew(host, STR_STP_CLK_START_CLK, MMC_REG_STR_STP_CLK);
 } else {
  mxcmci_writew(host, STR_STP_CLK_STOP_CLK, MMC_REG_STR_STP_CLK);
 }

 host->clock = ios->clock;
}
