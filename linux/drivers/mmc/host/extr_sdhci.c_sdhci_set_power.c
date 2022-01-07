
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_host {TYPE_2__* mmc; } ;
struct TYPE_3__ {int vmmc; } ;
struct TYPE_4__ {TYPE_1__ supply; } ;


 scalar_t__ IS_ERR (int ) ;
 int sdhci_set_power_noreg (struct sdhci_host*,unsigned char,unsigned short) ;
 int sdhci_set_power_reg (struct sdhci_host*,unsigned char,unsigned short) ;

void sdhci_set_power(struct sdhci_host *host, unsigned char mode,
       unsigned short vdd)
{
 if (IS_ERR(host->mmc->supply.vmmc))
  sdhci_set_power_noreg(host, mode, vdd);
 else
  sdhci_set_power_reg(host, mode, vdd);
}
