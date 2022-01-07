
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxamci_host {TYPE_2__* mrq; int cmdat; struct mmc_data* data; int dma_dir; struct dma_chan* dma_chan_tx; struct dma_chan* dma_chan_rx; } ;
struct mmc_data {int flags; int bytes_xfered; int blocks; int blksz; int error; int sg_len; int sg; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_4__ {scalar_t__ stop; } ;
struct TYPE_3__ {int dev; } ;


 int DATA_TRAN_DONE ;
 int EILSEQ ;
 int ETIMEDOUT ;
 int MMC_DATA_READ ;
 unsigned int STAT_CRC_READ_ERROR ;
 unsigned int STAT_CRC_WRITE_ERROR ;
 unsigned int STAT_READ_TIME_OUT ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int pxamci_disable_irq (struct pxamci_host*,int ) ;
 int pxamci_finish_request (struct pxamci_host*,TYPE_2__*) ;
 int pxamci_start_cmd (struct pxamci_host*,scalar_t__,int ) ;
 int pxamci_stop_clock (struct pxamci_host*) ;

__attribute__((used)) static int pxamci_data_done(struct pxamci_host *host, unsigned int stat)
{
 struct mmc_data *data = host->data;
 struct dma_chan *chan;

 if (!data)
  return 0;

 if (data->flags & MMC_DATA_READ)
  chan = host->dma_chan_rx;
 else
  chan = host->dma_chan_tx;
 dma_unmap_sg(chan->device->dev,
       data->sg, data->sg_len, host->dma_dir);

 if (stat & STAT_READ_TIME_OUT)
  data->error = -ETIMEDOUT;
 else if (stat & (STAT_CRC_READ_ERROR|STAT_CRC_WRITE_ERROR))
  data->error = -EILSEQ;







 if (!data->error)
  data->bytes_xfered = data->blocks * data->blksz;
 else
  data->bytes_xfered = 0;

 pxamci_disable_irq(host, DATA_TRAN_DONE);

 host->data = ((void*)0);
 if (host->mrq->stop) {
  pxamci_stop_clock(host);
  pxamci_start_cmd(host, host->mrq->stop, host->cmdat);
 } else {
  pxamci_finish_request(host, host->mrq);
 }

 return 1;
}
