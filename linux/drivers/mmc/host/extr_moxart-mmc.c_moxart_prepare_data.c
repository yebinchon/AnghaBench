
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct moxart_host {int data_len; int fifo_width; int rate; scalar_t__ base; scalar_t__ have_dma; TYPE_2__* mrq; } ;
struct mmc_data {int blocks; int blksz; int flags; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {struct mmc_data* data; } ;


 int BUG_ON (int) ;
 int DCR_BLK_SIZE ;
 int DCR_DATA_EN ;
 int DCR_DATA_FIFO_RESET ;
 int DCR_DATA_WRITE ;
 int DCR_DMA_EN ;
 int FIFO_ORUN ;
 int FIFO_URUN ;
 int MASK_DATA ;
 int MMC_DATA_WRITE ;
 scalar_t__ REG_CLEAR ;
 scalar_t__ REG_DATA_CONTROL ;
 scalar_t__ REG_DATA_LENGTH ;
 scalar_t__ REG_DATA_TIMER ;
 int ffs (int) ;
 int moxart_init_sg (struct moxart_host*,struct mmc_data*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void moxart_prepare_data(struct moxart_host *host)
{
 struct mmc_data *data = host->mrq->cmd->data;
 u32 datactrl;
 int blksz_bits;

 if (!data)
  return;

 host->data_len = data->blocks * data->blksz;
 blksz_bits = ffs(data->blksz) - 1;
 BUG_ON(1 << blksz_bits != data->blksz);

 moxart_init_sg(host, data);

 datactrl = DCR_DATA_EN | (blksz_bits & DCR_BLK_SIZE);

 if (data->flags & MMC_DATA_WRITE)
  datactrl |= DCR_DATA_WRITE;

 if ((host->data_len > host->fifo_width) && host->have_dma)
  datactrl |= DCR_DMA_EN;

 writel(DCR_DATA_FIFO_RESET, host->base + REG_DATA_CONTROL);
 writel(MASK_DATA | FIFO_URUN | FIFO_ORUN, host->base + REG_CLEAR);
 writel(host->rate, host->base + REG_DATA_TIMER);
 writel(host->data_len, host->base + REG_DATA_LENGTH);
 writel(datactrl, host->base + REG_DATA_CONTROL);
}
