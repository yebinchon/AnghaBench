
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int ENODEV ;
 int PTR_ERR (int ) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_start_signal_voltage_switch (struct mmc_host*,struct mmc_ios*) ;
 int xenon_enable_internal_clk (struct sdhci_host*) ;
 int xenon_soc_pad_ctrl (struct sdhci_host*,int ) ;

__attribute__((used)) static int xenon_start_signal_voltage_switch(struct mmc_host *mmc,
          struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 xenon_enable_internal_clk(host);

 xenon_soc_pad_ctrl(host, ios->signal_voltage);






 if (PTR_ERR(mmc->supply.vqmmc) == -ENODEV)
  return 0;

 return sdhci_start_signal_voltage_switch(mmc, ios);
}
