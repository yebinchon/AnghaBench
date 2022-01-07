
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mmc_data {int flags; int blksz; int blocks; int sg_len; int sg; int error; } ;
struct TYPE_4__ {scalar_t__ has_bad_data_ordering; int has_rwproof; } ;
struct atmel_mci {int mode_reg; int data_size; int * buffer; TYPE_2__ caps; struct mmc_data* data; TYPE_1__* pdev; int sg; } ;
struct TYPE_3__ {int dev; } ;


 int ATMCI_BLKE ;
 int ATMCI_BLKLEN (int) ;
 int ATMCI_DATA_ERROR_FLAGS ;
 int ATMCI_ENDRX ;
 int ATMCI_ENDTX ;
 int ATMCI_MR ;
 int ATMCI_MR_PDCMODE ;
 int ATMCI_RXBUFF ;
 int ATMCI_TXBUFE ;
 int EINPROGRESS ;
 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;
 int XFER_RECEIVE ;
 int XFER_TRANSMIT ;
 int atmci_pdc_set_both_buf (struct atmel_mci*,int ) ;
 int atmci_readl (struct atmel_mci*,int ) ;
 int atmci_writel (struct atmel_mci*,int ,int) ;
 int dma_map_sg (int *,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int sg_copy_to_buffer (int ,int ,int *,int) ;
 int swab32 (int ) ;

__attribute__((used)) static u32
atmci_prepare_data_pdc(struct atmel_mci *host, struct mmc_data *data)
{
 u32 iflags, tmp;
 int i;

 data->error = -EINPROGRESS;

 host->data = data;
 host->sg = data->sg;
 iflags = ATMCI_DATA_ERROR_FLAGS;


 atmci_writel(host, ATMCI_MR, host->mode_reg | ATMCI_MR_PDCMODE);

 if (data->flags & MMC_DATA_READ)
  iflags |= ATMCI_ENDRX | ATMCI_RXBUFF;
 else
  iflags |= ATMCI_ENDTX | ATMCI_TXBUFE | ATMCI_BLKE;


 tmp = atmci_readl(host, ATMCI_MR);
 tmp &= 0x0000ffff;
 tmp |= ATMCI_BLKLEN(data->blksz);
 atmci_writel(host, ATMCI_MR, tmp);


 host->data_size = data->blocks * data->blksz;
 dma_map_sg(&host->pdev->dev, data->sg, data->sg_len,
     mmc_get_dma_dir(data));

 if ((!host->caps.has_rwproof)
     && (host->data->flags & MMC_DATA_WRITE)) {
  sg_copy_to_buffer(host->data->sg, host->data->sg_len,
                    host->buffer, host->data_size);
  if (host->caps.has_bad_data_ordering)
   for (i = 0; i < host->data_size; i++)
    host->buffer[i] = swab32(host->buffer[i]);
 }

 if (host->data_size)
  atmci_pdc_set_both_buf(host, data->flags & MMC_DATA_READ ?
           XFER_RECEIVE : XFER_TRANSMIT);
 return iflags;
}
