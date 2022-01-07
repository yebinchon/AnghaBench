
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {scalar_t__ power_mode; int clock; int bus_width; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {scalar_t__ cur_power_mode; int cmd_mutex; int dev; } ;


 int alcor_set_bus_width (struct mmc_host*,struct mmc_ios*) ;
 int alcor_set_clock (struct alcor_sdmmc_host*,int ) ;
 int alcor_set_power_mode (struct mmc_host*,struct mmc_ios*) ;
 int alcor_set_timing (struct mmc_host*,struct mmc_ios*) ;
 int dev_dbg (int ,char*,int ,scalar_t__) ;
 struct alcor_sdmmc_host* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void alcor_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct alcor_sdmmc_host *host = mmc_priv(mmc);

 mutex_lock(&host->cmd_mutex);

 dev_dbg(host->dev, "set ios. bus width: %x, power mode: %x\n",
  ios->bus_width, ios->power_mode);

 if (ios->power_mode != host->cur_power_mode) {
  alcor_set_power_mode(mmc, ios);
  host->cur_power_mode = ios->power_mode;
 } else {
  alcor_set_timing(mmc, ios);
  alcor_set_bus_width(mmc, ios);
  alcor_set_clock(host, ios->clock);
 }

 mutex_unlock(&host->cmd_mutex);
}
