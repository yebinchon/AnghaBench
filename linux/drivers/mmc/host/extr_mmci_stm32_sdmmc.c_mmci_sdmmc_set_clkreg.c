
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmci_host {unsigned int mclk; int cclk; unsigned int clk_reg_add; TYPE_2__* mmc; } ;
struct TYPE_3__ {scalar_t__ timing; scalar_t__ power_mode; scalar_t__ bus_width; } ;
struct TYPE_4__ {int actual_clock; TYPE_1__ ios; } ;


 unsigned int DIV_ROUND_UP (int,int) ;
 unsigned int MCI_STM32_CLK_BUSSPEED ;
 unsigned int MCI_STM32_CLK_CLKDIV_MSK ;
 unsigned int MCI_STM32_CLK_DDR ;
 unsigned int MCI_STM32_CLK_HWFCEN ;
 unsigned int MCI_STM32_CLK_SELFBCK ;
 unsigned int MCI_STM32_CLK_SEL_MSK ;
 unsigned int MCI_STM32_CLK_WIDEBUS_4 ;
 unsigned int MCI_STM32_CLK_WIDEBUS_8 ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_BUS_WIDTH_8 ;
 scalar_t__ MMC_POWER_ON ;
 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 scalar_t__ MMC_TIMING_UHS_SDR104 ;
 scalar_t__ MMC_TIMING_UHS_SDR50 ;
 int mmci_write_clkreg (struct mmci_host*,unsigned int) ;

__attribute__((used)) static void mmci_sdmmc_set_clkreg(struct mmci_host *host, unsigned int desired)
{
 unsigned int clk = 0, ddr = 0;

 if (host->mmc->ios.timing == MMC_TIMING_MMC_DDR52 ||
     host->mmc->ios.timing == MMC_TIMING_UHS_DDR50)
  ddr = MCI_STM32_CLK_DDR;






 if (desired) {
  if (desired >= host->mclk && !ddr) {
   host->cclk = host->mclk;
  } else {
   clk = DIV_ROUND_UP(host->mclk, 2 * desired);
   if (clk > MCI_STM32_CLK_CLKDIV_MSK)
    clk = MCI_STM32_CLK_CLKDIV_MSK;
   host->cclk = host->mclk / (2 * clk);
  }
 } else {





  clk = MCI_STM32_CLK_CLKDIV_MSK;
  host->cclk = host->mclk / (2 * clk);
 }


 if (host->mmc->ios.power_mode == MMC_POWER_ON)
  host->mmc->actual_clock = host->cclk;
 else
  host->mmc->actual_clock = 0;

 if (host->mmc->ios.bus_width == MMC_BUS_WIDTH_4)
  clk |= MCI_STM32_CLK_WIDEBUS_4;
 if (host->mmc->ios.bus_width == MMC_BUS_WIDTH_8)
  clk |= MCI_STM32_CLK_WIDEBUS_8;

 clk |= MCI_STM32_CLK_HWFCEN;
 clk |= host->clk_reg_add;
 clk |= ddr;





 if (host->mmc->ios.timing >= MMC_TIMING_UHS_SDR50) {
  clk |= MCI_STM32_CLK_BUSSPEED;
  if (host->mmc->ios.timing == MMC_TIMING_UHS_SDR104) {
   clk &= ~MCI_STM32_CLK_SEL_MSK;
   clk |= MCI_STM32_CLK_SELFBCK;
  }
 }

 mmci_write_clkreg(host, clk);
}
