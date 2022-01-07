
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {int bytes_xfered; int blksz; int blocks; scalar_t__ error; } ;
struct device {int dummy; } ;
struct bcm2835_host {int hcfg; int data_complete; scalar_t__ ioaddr; scalar_t__ cmd; struct mmc_data* data; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ SDHCFG ;
 int SDHCFG_BLOCK_IRPT_EN ;
 int SDHCFG_DATA_IRPT_EN ;
 scalar_t__ SDHSTS ;
 int bcm2835_transfer_complete (struct bcm2835_host*) ;
 int dev_dbg (struct device*,char*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_finish_data(struct bcm2835_host *host)
{
 struct device *dev = &host->pdev->dev;
 struct mmc_data *data;

 data = host->data;

 host->hcfg &= ~(SDHCFG_DATA_IRPT_EN | SDHCFG_BLOCK_IRPT_EN);
 writel(host->hcfg, host->ioaddr + SDHCFG);

 data->bytes_xfered = data->error ? 0 : (data->blksz * data->blocks);

 host->data_complete = 1;

 if (host->cmd) {




  dev_dbg(dev, "Finished early - HSTS %08x\n",
   readl(host->ioaddr + SDHSTS));
 } else {
  bcm2835_transfer_complete(host);
 }
}
