
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {scalar_t__ actual_clock; } ;


 int SDHCI_CLOCK_CONTROL ;
 int sdhci_enable_clk (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void __sdhci_msm_set_clock(struct sdhci_host *host, unsigned int clock)
{
 u16 clk;






 host->mmc->actual_clock = 0;

 sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);

 if (clock == 0)
  return;






 clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
 sdhci_enable_clk(host, clk);
}
