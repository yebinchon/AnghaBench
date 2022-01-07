
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usdhi6_host {scalar_t__ rate; } ;
struct mmc_ios {scalar_t__ clock; int power_mode; int timing; int bus_width; int vdd; } ;
struct mmc_host {int dummy; } ;


 int MMC_BUS_WIDTH_1 ;



 int MMC_TIMING_UHS_DDR50 ;
 int USDHI6_SDIF_MODE ;
 int USDHI6_SD_OPTION ;
 int USDHI6_SD_OPTION_WIDTH_1 ;
 int dev_dbg (int ,char*,scalar_t__,int ,int,int ,int ) ;
 int dev_err (int ,char*) ;
 int mmc_dev (struct mmc_host*) ;
 struct usdhi6_host* mmc_priv (struct mmc_host*) ;
 int usdhi6_clk_set (struct usdhi6_host*,struct mmc_ios*) ;
 int usdhi6_only_cd (struct usdhi6_host*) ;
 int usdhi6_read (struct usdhi6_host*,int ) ;
 int usdhi6_reset (struct usdhi6_host*) ;
 int usdhi6_set_power (struct usdhi6_host*,struct mmc_ios*) ;
 int usdhi6_write (struct usdhi6_host*,int ,int) ;

__attribute__((used)) static void usdhi6_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct usdhi6_host *host = mmc_priv(mmc);
 u32 option, mode;
 int ret;

 dev_dbg(mmc_dev(mmc), "%uHz, OCR: %u, power %u, bus-width %u, timing %u\n",
  ios->clock, ios->vdd, ios->power_mode, ios->bus_width, ios->timing);

 switch (ios->power_mode) {
 case 130:
  usdhi6_set_power(host, ios);
  usdhi6_only_cd(host);
  break;
 case 128:




  ret = usdhi6_reset(host);
  if (ret < 0) {
   dev_err(mmc_dev(mmc), "Cannot reset the interface!\n");
  } else {
   usdhi6_set_power(host, ios);
   usdhi6_only_cd(host);
  }
  break;
 case 129:
  option = usdhi6_read(host, USDHI6_SD_OPTION);





  if (ios->bus_width == MMC_BUS_WIDTH_1) {
   if (ios->timing == MMC_TIMING_UHS_DDR50)
    dev_err(mmc_dev(mmc),
     "4 bits are required for DDR\n");
   option |= USDHI6_SD_OPTION_WIDTH_1;
   mode = 0;
  } else {
   option &= ~USDHI6_SD_OPTION_WIDTH_1;
   mode = ios->timing == MMC_TIMING_UHS_DDR50;
  }
  usdhi6_write(host, USDHI6_SD_OPTION, option);
  usdhi6_write(host, USDHI6_SDIF_MODE, mode);
  break;
 }

 if (host->rate != ios->clock)
  usdhi6_clk_set(host, ios);
}
