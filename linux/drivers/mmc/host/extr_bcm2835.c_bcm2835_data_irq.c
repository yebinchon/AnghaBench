
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm2835_host {int hcfg; scalar_t__ blocks; scalar_t__ ioaddr; TYPE_1__* data; } ;
struct TYPE_2__ {int flags; scalar_t__ error; } ;


 int MMC_DATA_WRITE ;
 scalar_t__ SDHCFG ;
 int SDHCFG_BLOCK_IRPT_EN ;
 int SDHCFG_DATA_IRPT_EN ;
 int bcm2835_check_data_error (struct bcm2835_host*,int ) ;
 int bcm2835_transfer_pio (struct bcm2835_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_data_irq(struct bcm2835_host *host, u32 intmask)
{






 if (!host->data)
  return;

 bcm2835_check_data_error(host, intmask);
 if (host->data->error)
  goto finished;

 if (host->data->flags & MMC_DATA_WRITE) {

  host->hcfg &= ~(SDHCFG_DATA_IRPT_EN);
  host->hcfg |= SDHCFG_BLOCK_IRPT_EN;
  writel(host->hcfg, host->ioaddr + SDHCFG);
  bcm2835_transfer_pio(host);
 } else {
  bcm2835_transfer_pio(host);
  host->blocks--;
  if ((host->blocks == 0) || host->data->error)
   goto finished;
 }
 return;

finished:
 host->hcfg &= ~(SDHCFG_DATA_IRPT_EN | SDHCFG_BLOCK_IRPT_EN);
 writel(host->hcfg, host->ioaddr + SDHCFG);
}
