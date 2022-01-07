
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int cmd_mutex; } ;


 int AU6601_OPT ;
 int AU6601_OPT_SD_18V ;


 int alcor_rmw8 (struct alcor_sdmmc_host*,int ,int ,int ) ;
 struct alcor_sdmmc_host* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int alcor_signal_voltage_switch(struct mmc_host *mmc,
           struct mmc_ios *ios)
{
 struct alcor_sdmmc_host *host = mmc_priv(mmc);

 mutex_lock(&host->cmd_mutex);

 switch (ios->signal_voltage) {
 case 128:
  alcor_rmw8(host, AU6601_OPT, AU6601_OPT_SD_18V, 0);
  break;
 case 129:
  alcor_rmw8(host, AU6601_OPT, 0, AU6601_OPT_SD_18V);
  break;
 default:

  break;
 }

 mutex_unlock(&host->cmd_mutex);
 return 0;
}
