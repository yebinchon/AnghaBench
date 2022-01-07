
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_sprd_host {int pins_default; int pinctrl; int pins_uhs; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 scalar_t__ IS_ERR (int ) ;


 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 struct sdhci_sprd_host* TO_SPRD_HOST (struct sdhci_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_vqmmc (struct mmc_host*,struct mmc_ios*) ;
 int pinctrl_select_state (int ,int ) ;
 int pr_err (char*,int ) ;
 int sdhci_reset (struct sdhci_host*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sdhci_sprd_voltage_switch(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
 int ret;

 if (!IS_ERR(mmc->supply.vqmmc)) {
  ret = mmc_regulator_set_vqmmc(mmc, ios);
  if (ret) {
   pr_err("%s: Switching signalling voltage failed\n",
          mmc_hostname(mmc));
   return ret;
  }
 }

 if (IS_ERR(sprd_host->pinctrl))
  return 0;

 switch (ios->signal_voltage) {
 case 129:
  ret = pinctrl_select_state(sprd_host->pinctrl,
        sprd_host->pins_uhs);
  if (ret) {
   pr_err("%s: failed to select uhs pin state\n",
          mmc_hostname(mmc));
   return ret;
  }
  break;

 default:

 case 128:
  ret = pinctrl_select_state(sprd_host->pinctrl,
        sprd_host->pins_default);
  if (ret) {
   pr_err("%s: failed to select default pin state\n",
          mmc_hostname(mmc));
   return ret;
  }
  break;
 }


 usleep_range(300, 500);
 sdhci_reset(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);

 return 0;
}
