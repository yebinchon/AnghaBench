
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_data {int blocks; int blksz; scalar_t__ bytes_xfered; int error; int sg_len; int sg; } ;
struct TYPE_8__ {scalar_t__ len; } ;
struct TYPE_7__ {int dir; } ;
struct au1xmmc_host {scalar_t__ status; int flags; TYPE_3__ pio; TYPE_2__ dma; int mmc; struct mmc_request* mrq; } ;
struct TYPE_9__ {TYPE_5__* chan_ptr; } ;
typedef TYPE_4__ chan_tab_t ;
struct TYPE_10__ {scalar_t__ ddma_bytecnt; } ;
typedef TYPE_5__ au1x_dma_chan_t ;
struct TYPE_6__ {struct mmc_data* data; } ;


 int DMA_CHANNEL (struct au1xmmc_host*) ;
 int EILSEQ ;
 int HOST_F_DBDMA ;
 int HOST_F_DMA ;
 int HOST_F_XMIT ;
 int HOST_STATUS (struct au1xmmc_host*) ;
 scalar_t__ HOST_S_DATA ;
 scalar_t__ HOST_S_STOP ;
 int SD_STATUS_DB ;
 int SD_STATUS_RC ;
 int SD_STATUS_WC ;
 int WARN_ON (int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int au1xmmc_finish_request (struct au1xmmc_host*) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;

__attribute__((used)) static void au1xmmc_data_complete(struct au1xmmc_host *host, u32 status)
{
 struct mmc_request *mrq = host->mrq;
 struct mmc_data *data;
 u32 crc;

 WARN_ON((host->status != HOST_S_DATA) && (host->status != HOST_S_STOP));

 if (host->mrq == ((void*)0))
  return;

 data = mrq->cmd->data;

 if (status == 0)
  status = __raw_readl(HOST_STATUS(host));


 while ((host->flags & HOST_F_XMIT) && (status & SD_STATUS_DB))
  status = __raw_readl(HOST_STATUS(host));

 data->error = 0;
 dma_unmap_sg(mmc_dev(host->mmc), data->sg, data->sg_len, host->dma.dir);


 crc = (status & (SD_STATUS_WC | SD_STATUS_RC));
 if (host->flags & HOST_F_XMIT)
  crc |= ((status & 0x07) == 0x02) ? 0 : 1;

 if (crc)
  data->error = -EILSEQ;


 __raw_writel(SD_STATUS_WC | SD_STATUS_RC, HOST_STATUS(host));

 data->bytes_xfered = 0;

 if (!data->error) {
  if (host->flags & (HOST_F_DMA | HOST_F_DBDMA)) {
   u32 chan = DMA_CHANNEL(host);

   chan_tab_t *c = *((chan_tab_t **)chan);
   au1x_dma_chan_t *cp = c->chan_ptr;
   data->bytes_xfered = cp->ddma_bytecnt;
  } else
   data->bytes_xfered =
    (data->blocks * data->blksz) - host->pio.len;
 }

 au1xmmc_finish_request(host);
}
