
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_s3c {size_t cur_clk; int * clk_bus; TYPE_1__* pdev; } ;
struct sdhci_host {TYPE_2__* mmc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ actual_clock; } ;
struct TYPE_3__ {struct device dev; } ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int SDHCI_CLOCK_INT_STABLE ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_err (struct device*,char*,int ,...) ;
 int mdelay (int) ;
 int mmc_hostname (TYPE_2__*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_s3c_set_clock (struct sdhci_host*,unsigned int) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;
 struct sdhci_s3c* to_s3c (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_cmu_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct sdhci_s3c *ourhost = to_s3c(host);
 struct device *dev = &ourhost->pdev->dev;
 unsigned long timeout;
 u16 clk = 0;
 int ret;

 host->mmc->actual_clock = 0;


 if (clock == 0) {
  sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
  return;
 }

 sdhci_s3c_set_clock(host, clock);


 clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
 clk &= ~SDHCI_CLOCK_CARD_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);

 ret = clk_set_rate(ourhost->clk_bus[ourhost->cur_clk], clock);
 if (ret != 0) {
  dev_err(dev, "%s: failed to set clock rate %uHz\n",
   mmc_hostname(host->mmc), clock);
  return;
 }

 clk = SDHCI_CLOCK_INT_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);


 timeout = 20;
 while (!((clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL))
  & SDHCI_CLOCK_INT_STABLE)) {
  if (timeout == 0) {
   dev_err(dev, "%s: Internal clock never stabilised.\n",
    mmc_hostname(host->mmc));
   return;
  }
  timeout--;
  mdelay(1);
 }

 clk |= SDHCI_CLOCK_CARD_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
}
