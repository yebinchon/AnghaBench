
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; int blocks; int blksz; int sg_len; int sg; scalar_t__ bytes_xfered; } ;
struct mmc_command {struct mmc_data* data; } ;
struct bcm2835_host {int data_complete; scalar_t__ ioaddr; int blocks; int sg_miter; int dma_desc; struct mmc_data* data; } ;


 int MMC_DATA_READ ;
 scalar_t__ SDHBCT ;
 scalar_t__ SDHBLC ;
 int SG_MITER_ATOMIC ;
 int SG_MITER_FROM_SG ;
 int SG_MITER_TO_SG ;
 int WARN_ON (struct mmc_data*) ;
 int bcm2835_set_transfer_irqs (struct bcm2835_host*) ;
 int sg_miter_start (int *,int ,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static
void bcm2835_prepare_data(struct bcm2835_host *host, struct mmc_command *cmd)
{
 struct mmc_data *data = cmd->data;

 WARN_ON(host->data);

 host->data = data;
 if (!data)
  return;

 host->data_complete = 0;
 host->data->bytes_xfered = 0;

 if (!host->dma_desc) {

  int flags = SG_MITER_ATOMIC;

  if (data->flags & MMC_DATA_READ)
   flags |= SG_MITER_TO_SG;
  else
   flags |= SG_MITER_FROM_SG;
  sg_miter_start(&host->sg_miter, data->sg, data->sg_len, flags);
  host->blocks = data->blocks;
 }

 bcm2835_set_transfer_irqs(host);

 writel(data->blksz, host->ioaddr + SDHBCT);
 writel(data->blocks, host->ioaddr + SDHBLC);
}
