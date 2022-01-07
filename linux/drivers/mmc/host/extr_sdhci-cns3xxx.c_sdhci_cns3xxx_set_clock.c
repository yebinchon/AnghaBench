
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_host {int max_clk; TYPE_1__* mmc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ actual_clock; } ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int SDHCI_CLOCK_INT_STABLE ;
 int SDHCI_DIVIDER_SHIFT ;
 int dev_dbg (struct device*,char*,unsigned int,int) ;
 int dev_warn (struct device*,char*) ;
 int mdelay (int) ;
 struct device* mmc_dev (TYPE_1__*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_cns3xxx_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct device *dev = mmc_dev(host->mmc);
 int div = 1;
 u16 clk;
 unsigned long timeout;

 host->mmc->actual_clock = 0;

 sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);

 if (clock == 0)
  return;

 while (host->max_clk / div > clock) {




  if (div < 4)
   div += 1;
  else if (div < 256)
   div *= 2;
  else
   break;
 }

 dev_dbg(dev, "desired SD clock: %d, actual: %d\n",
  clock, host->max_clk / div);


 if (div != 3)
  div >>= 1;

 clk = div << SDHCI_DIVIDER_SHIFT;
 clk |= SDHCI_CLOCK_INT_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);

 timeout = 20;
 while (!((clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL))
   & SDHCI_CLOCK_INT_STABLE)) {
  if (timeout == 0) {
   dev_warn(dev, "clock is unstable");
   break;
  }
  timeout--;
  mdelay(1);
 }

 clk |= SDHCI_CLOCK_CARD_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
}
