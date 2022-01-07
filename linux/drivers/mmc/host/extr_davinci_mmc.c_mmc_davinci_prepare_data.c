
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_davinci_host {scalar_t__ version; int ns_in_one_cycle; int bytes_left; struct mmc_data* data; int sg; int sg_len; scalar_t__ use_dma; int * buffer; scalar_t__ base; int data_dir; int mmc; } ;
struct mmc_data {int flags; int blocks; int blksz; int timeout_clks; int timeout_ns; int sg; int sg_len; } ;


 scalar_t__ DAVINCI_MMCBLEN ;
 scalar_t__ DAVINCI_MMCFIFOCTL ;
 scalar_t__ DAVINCI_MMCNBLK ;
 scalar_t__ DAVINCI_MMCTOD ;
 int DAVINCI_MMC_DATADIR_NONE ;
 int DAVINCI_MMC_DATADIR_READ ;
 int DAVINCI_MMC_DATADIR_WRITE ;
 int MMCFIFOCTL_FIFODIR_RD ;
 int MMCFIFOCTL_FIFODIR_WR ;
 int MMCFIFOCTL_FIFOLEV ;
 int MMCFIFOCTL_FIFORST ;
 scalar_t__ MMC_CTLR_VERSION_2 ;
 int MMC_DATA_WRITE ;
 int dev_dbg (int ,char*,...) ;
 int mmc_davinci_sg_to_buf (struct mmc_davinci_host*) ;
 scalar_t__ mmc_davinci_start_dma_transfer (struct mmc_davinci_host*,struct mmc_data*) ;
 int mmc_dev (int ) ;
 int rw_threshold ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
mmc_davinci_prepare_data(struct mmc_davinci_host *host, struct mmc_request *req)
{
 int fifo_lev = (rw_threshold == 32) ? MMCFIFOCTL_FIFOLEV : 0;
 int timeout;
 struct mmc_data *data = req->data;

 if (host->version == MMC_CTLR_VERSION_2)
  fifo_lev = (rw_threshold == 64) ? MMCFIFOCTL_FIFOLEV : 0;

 host->data = data;
 if (data == ((void*)0)) {
  host->data_dir = DAVINCI_MMC_DATADIR_NONE;
  writel(0, host->base + DAVINCI_MMCBLEN);
  writel(0, host->base + DAVINCI_MMCNBLK);
  return;
 }

 dev_dbg(mmc_dev(host->mmc), "%s, %d blocks of %d bytes\n",
  (data->flags & MMC_DATA_WRITE) ? "write" : "read",
  data->blocks, data->blksz);
 dev_dbg(mmc_dev(host->mmc), "  DTO %d cycles + %d ns\n",
  data->timeout_clks, data->timeout_ns);
 timeout = data->timeout_clks +
  (data->timeout_ns / host->ns_in_one_cycle);
 if (timeout > 0xffff)
  timeout = 0xffff;

 writel(timeout, host->base + DAVINCI_MMCTOD);
 writel(data->blocks, host->base + DAVINCI_MMCNBLK);
 writel(data->blksz, host->base + DAVINCI_MMCBLEN);


 if (data->flags & MMC_DATA_WRITE) {
  host->data_dir = DAVINCI_MMC_DATADIR_WRITE;
  writel(fifo_lev | MMCFIFOCTL_FIFODIR_WR | MMCFIFOCTL_FIFORST,
   host->base + DAVINCI_MMCFIFOCTL);
  writel(fifo_lev | MMCFIFOCTL_FIFODIR_WR,
   host->base + DAVINCI_MMCFIFOCTL);
 } else {
  host->data_dir = DAVINCI_MMC_DATADIR_READ;
  writel(fifo_lev | MMCFIFOCTL_FIFODIR_RD | MMCFIFOCTL_FIFORST,
   host->base + DAVINCI_MMCFIFOCTL);
  writel(fifo_lev | MMCFIFOCTL_FIFODIR_RD,
   host->base + DAVINCI_MMCFIFOCTL);
 }

 host->buffer = ((void*)0);
 host->bytes_left = data->blocks * data->blksz;
 if (host->use_dma && (host->bytes_left & (rw_threshold - 1)) == 0
   && mmc_davinci_start_dma_transfer(host, data) == 0) {

  host->bytes_left = 0;
 } else {

  host->sg_len = data->sg_len;
  host->sg = host->data->sg;
  mmc_davinci_sg_to_buf(host);
 }
}
