
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {scalar_t__ base; TYPE_1__* ops; int mmc; int use_dma; struct mmc_data* data; } ;
struct mmc_data {int flags; int blocks; int blksz; int sg_len; } ;
struct TYPE_2__ {int (* dma_start ) (struct mmci_host*,unsigned int*) ;} ;


 int EINVAL ;
 int MCI_DATAENDMASK ;
 scalar_t__ MMCIMASK0 ;
 int dev_vdbg (int ,char*,int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int mmci_prep_data (struct mmci_host*,struct mmc_data*,int) ;
 int mmci_write_datactrlreg (struct mmci_host*,unsigned int) ;
 int readl (scalar_t__) ;
 int stub1 (struct mmci_host*,unsigned int*) ;
 int writel (int,scalar_t__) ;

int mmci_dma_start(struct mmci_host *host, unsigned int datactrl)
{
 struct mmc_data *data = host->data;
 int ret;

 if (!host->use_dma)
  return -EINVAL;

 ret = mmci_prep_data(host, data, 0);
 if (ret)
  return ret;

 if (!host->ops || !host->ops->dma_start)
  return -EINVAL;


 dev_vdbg(mmc_dev(host->mmc),
   "Submit MMCI DMA job, sglen %d blksz %04x blks %04x flags %08x\n",
   data->sg_len, data->blksz, data->blocks, data->flags);

 host->ops->dma_start(host, &datactrl);


 mmci_write_datactrlreg(host, datactrl);






 writel(readl(host->base + MMCIMASK0) | MCI_DATAENDMASK,
        host->base + MMCIMASK0);
 return 0;
}
