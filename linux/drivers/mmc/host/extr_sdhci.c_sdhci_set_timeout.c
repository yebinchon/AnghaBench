
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdhci_host {int quirks2; int ier; TYPE_1__* ops; } ;
struct mmc_command {int dummy; } ;
struct TYPE_2__ {int (* set_timeout ) (struct sdhci_host*,struct mmc_command*) ;} ;


 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_QUIRK2_DISABLE_HW_TIMEOUT ;
 int SDHCI_TIMEOUT_CONTROL ;
 int sdhci_calc_sw_timeout (struct sdhci_host*,struct mmc_command*) ;
 int sdhci_calc_timeout (struct sdhci_host*,struct mmc_command*,int*) ;
 int sdhci_set_data_timeout_irq (struct sdhci_host*,int) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;
 int stub1 (struct sdhci_host*,struct mmc_command*) ;

__attribute__((used)) static void sdhci_set_timeout(struct sdhci_host *host, struct mmc_command *cmd)
{
 u8 count;

 if (host->ops->set_timeout) {
  host->ops->set_timeout(host, cmd);
 } else {
  bool too_big = 0;

  count = sdhci_calc_timeout(host, cmd, &too_big);

  if (too_big &&
      host->quirks2 & SDHCI_QUIRK2_DISABLE_HW_TIMEOUT) {
   sdhci_calc_sw_timeout(host, cmd);
   sdhci_set_data_timeout_irq(host, 0);
  } else if (!(host->ier & SDHCI_INT_DATA_TIMEOUT)) {
   sdhci_set_data_timeout_irq(host, 1);
  }

  sdhci_writeb(host, count, SDHCI_TIMEOUT_CONTROL);
 }
}
