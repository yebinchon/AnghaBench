
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_data {int flags; scalar_t__ blksz; int * sg; int sg_len; int error; } ;
struct dw_mci {int fifoth_val; scalar_t__ prev_blksz; scalar_t__ wm_aligned; int irq_lock; scalar_t__ part_buf_count; scalar_t__ part_buf_start; int * sg; int sg_miter; struct mmc_data* data; int dir_status; } ;


 int CTRL ;
 int DW_MCI_RECV_STATUS ;
 int DW_MCI_SEND_STATUS ;
 int EINPROGRESS ;
 int FIFOTH ;
 int INTMASK ;
 int MMC_DATA_READ ;
 int RINTSTS ;
 int SDMMC_CTRL_DMA_ENABLE ;
 int SDMMC_INT_RXDR ;
 int SDMMC_INT_TXDR ;
 int SG_MITER_ATOMIC ;
 int SG_MITER_FROM_SG ;
 int SG_MITER_TO_SG ;
 int WARN_ON (struct mmc_data*) ;
 int dw_mci_adjust_fifoth (struct dw_mci*,struct mmc_data*) ;
 int dw_mci_ctrl_thld (struct dw_mci*,struct mmc_data*) ;
 scalar_t__ dw_mci_submit_data_dma (struct dw_mci*,struct mmc_data*) ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int) ;
 int sg_miter_start (int *,int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dw_mci_submit_data(struct dw_mci *host, struct mmc_data *data)
{
 unsigned long irqflags;
 int flags = SG_MITER_ATOMIC;
 u32 temp;

 data->error = -EINPROGRESS;

 WARN_ON(host->data);
 host->sg = ((void*)0);
 host->data = data;

 if (data->flags & MMC_DATA_READ)
  host->dir_status = DW_MCI_RECV_STATUS;
 else
  host->dir_status = DW_MCI_SEND_STATUS;

 dw_mci_ctrl_thld(host, data);

 if (dw_mci_submit_data_dma(host, data)) {
  if (host->data->flags & MMC_DATA_READ)
   flags |= SG_MITER_TO_SG;
  else
   flags |= SG_MITER_FROM_SG;

  sg_miter_start(&host->sg_miter, data->sg, data->sg_len, flags);
  host->sg = data->sg;
  host->part_buf_start = 0;
  host->part_buf_count = 0;

  mci_writel(host, RINTSTS, SDMMC_INT_TXDR | SDMMC_INT_RXDR);

  spin_lock_irqsave(&host->irq_lock, irqflags);
  temp = mci_readl(host, INTMASK);
  temp |= SDMMC_INT_TXDR | SDMMC_INT_RXDR;
  mci_writel(host, INTMASK, temp);
  spin_unlock_irqrestore(&host->irq_lock, irqflags);

  temp = mci_readl(host, CTRL);
  temp &= ~SDMMC_CTRL_DMA_ENABLE;
  mci_writel(host, CTRL, temp);







  if (host->wm_aligned)
   dw_mci_adjust_fifoth(host, data);
  else
   mci_writel(host, FIFOTH, host->fifoth_val);
  host->prev_blksz = 0;
 } else {





  host->prev_blksz = data->blksz;
 }
}
