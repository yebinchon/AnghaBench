
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int offset; } ;
struct mmc_data {struct scatterlist* sg; } ;
struct TYPE_8__ {int len; size_t index; int offset; } ;
struct TYPE_6__ {size_t len; } ;
struct au1xmmc_host {int flags; int data_task; TYPE_4__ pio; TYPE_3__* pdev; TYPE_2__ dma; TYPE_1__* mrq; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_5__ {struct mmc_data* data; } ;


 int AU1XMMC_MAX_TRANSFER ;
 int DBG (char*,int ,int,int) ;
 int HOST_F_RECV ;
 int HOST_F_STOP ;
 int HOST_RXPORT (struct au1xmmc_host*) ;
 int HOST_STATUS (struct au1xmmc_host*) ;
 int IRQ_OFF (struct au1xmmc_host*,int ) ;
 int SD_CONFIG_NE ;
 int SD_STATUS_NE ;
 int SD_STATUS_RC ;
 int SD_STATUS_RO ;
 int SD_STATUS_RU ;
 int SEND_STOP (struct au1xmmc_host*) ;
 int __raw_readl (int ) ;
 unsigned char* kmap_atomic (int ) ;
 int kunmap_atomic (unsigned char*) ;
 int sg_dma_len (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void au1xmmc_receive_pio(struct au1xmmc_host *host)
{
 struct mmc_data *data;
 int max, count, sg_len = 0;
 unsigned char *sg_ptr = ((void*)0);
 u32 status, val;
 struct scatterlist *sg;

 data = host->mrq->data;

 if (!(host->flags & HOST_F_RECV))
  return;

 max = host->pio.len;

 if (host->pio.index < host->dma.len) {
  sg = &data->sg[host->pio.index];
  sg_ptr = kmap_atomic(sg_page(sg)) + sg->offset + host->pio.offset;


  sg_len = sg_dma_len(&data->sg[host->pio.index]) - host->pio.offset;


  if (sg_len < max)
   max = sg_len;
 }

 if (max > AU1XMMC_MAX_TRANSFER)
  max = AU1XMMC_MAX_TRANSFER;

 for (count = 0; count < max; count++) {
  status = __raw_readl(HOST_STATUS(host));

  if (!(status & SD_STATUS_NE))
   break;

  if (status & SD_STATUS_RC) {
   DBG("RX CRC Error [%d + %d].\n", host->pdev->id,
     host->pio.len, count);
   break;
  }

  if (status & SD_STATUS_RO) {
   DBG("RX Overrun [%d + %d]\n", host->pdev->id,
     host->pio.len, count);
   break;
  }
  else if (status & SD_STATUS_RU) {
   DBG("RX Underrun [%d + %d]\n", host->pdev->id,
     host->pio.len, count);
   break;
  }

  val = __raw_readl(HOST_RXPORT(host));

  if (sg_ptr)
   sg_ptr[count] = (unsigned char)(val & 0xFF);
 }
 if (sg_ptr)
  kunmap_atomic(sg_ptr);

 host->pio.len -= count;
 host->pio.offset += count;

 if (sg_len && count == sg_len) {
  host->pio.index++;
  host->pio.offset = 0;
 }

 if (host->pio.len == 0) {

  IRQ_OFF(host, SD_CONFIG_NE);

  if (host->flags & HOST_F_STOP)
   SEND_STOP(host);

  tasklet_schedule(&host->data_task);
 }
}
