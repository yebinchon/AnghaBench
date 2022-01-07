
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wbsd_host {scalar_t__ dma; TYPE_2__* mrq; int mmc; } ;
struct mmc_data {int bytes_xfered; int blksz; int error; int flags; scalar_t__ stop; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int blocks; int blksz; } ;


 int EIO ;
 int MMC_DATA_READ ;
 int WARN_ON (int ) ;
 int WBSD_BLOCK_READ ;
 int WBSD_BLOCK_WRITE ;
 int WBSD_IDX_DMA ;
 int WBSD_IDX_STATUS ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (scalar_t__) ;
 int disable_dma (scalar_t__) ;
 int get_dma_residue (scalar_t__) ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,int) ;
 int release_dma_lock (unsigned long) ;
 int wbsd_dma_to_sg (struct wbsd_host*,struct mmc_data*) ;
 int wbsd_read_index (struct wbsd_host*,int ) ;
 int wbsd_request_end (struct wbsd_host*,TYPE_2__*) ;
 int wbsd_send_command (struct wbsd_host*,scalar_t__) ;
 int wbsd_write_index (struct wbsd_host*,int ,int ) ;

__attribute__((used)) static void wbsd_finish_data(struct wbsd_host *host, struct mmc_data *data)
{
 unsigned long dmaflags;
 int count;
 u8 status;

 WARN_ON(host->mrq == ((void*)0));




 if (data->stop)
  wbsd_send_command(host, data->stop);





 do {
  status = wbsd_read_index(host, WBSD_IDX_STATUS);
 } while (status & (WBSD_BLOCK_READ | WBSD_BLOCK_WRITE));




 if (host->dma >= 0) {



  wbsd_write_index(host, WBSD_IDX_DMA, 0);




  dmaflags = claim_dma_lock();
  disable_dma(host->dma);
  clear_dma_ff(host->dma);
  count = get_dma_residue(host->dma);
  release_dma_lock(dmaflags);

  data->bytes_xfered = host->mrq->data->blocks *
   host->mrq->data->blksz - count;
  data->bytes_xfered -= data->bytes_xfered % data->blksz;




  if (count) {
   pr_err("%s: Incomplete DMA transfer. "
    "%d bytes left.\n",
    mmc_hostname(host->mmc), count);

   if (!data->error)
    data->error = -EIO;
  } else {




   if (data->flags & MMC_DATA_READ)
    wbsd_dma_to_sg(host, data);
  }

  if (data->error) {
   if (data->bytes_xfered)
    data->bytes_xfered -= data->blksz;
  }
 }

 wbsd_request_end(host, host->mrq);
}
