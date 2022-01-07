
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxamci_host {unsigned long long clkrate; unsigned int clkrt; int dma_cookie; int mmc; int dma_len; int dma_dir; struct dma_chan* dma_chan_tx; struct dma_chan* dma_chan_rx; TYPE_1__* res; scalar_t__ base; struct mmc_data* data; } ;
struct mmc_data {unsigned int blocks; unsigned int blksz; unsigned int timeout_clks; int flags; int sg; int sg_len; scalar_t__ timeout_ns; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int direction; scalar_t__ dst_addr; scalar_t__ src_addr; void* dst_addr_width; void* src_addr_width; } ;
struct dma_chan {TYPE_2__* device; } ;
struct dma_async_tx_descriptor {struct pxamci_host* callback_param; int callback; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int config ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ start; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 void* DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_TO_DEVICE ;
 scalar_t__ MMC_BLKLEN ;
 int MMC_DATA_READ ;
 scalar_t__ MMC_NOB ;
 scalar_t__ MMC_RDTO ;
 scalar_t__ MMC_RXFIFO ;
 scalar_t__ MMC_TXFIFO ;
 int cpu_is_pxa27x () ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,int ,int ,int,int ) ;
 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int do_div (unsigned long long,unsigned long) ;
 int memset (struct dma_slave_config*,int ,int) ;
 int mmc_dev (int ) ;
 int pxamci_dma_irq ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void pxamci_setup_data(struct pxamci_host *host, struct mmc_data *data)
{
 struct dma_async_tx_descriptor *tx;
 enum dma_transfer_direction direction;
 struct dma_slave_config config;
 struct dma_chan *chan;
 unsigned int nob = data->blocks;
 unsigned long long clks;
 unsigned int timeout;
 int ret;

 host->data = data;

 writel(nob, host->base + MMC_NOB);
 writel(data->blksz, host->base + MMC_BLKLEN);

 clks = (unsigned long long)data->timeout_ns * host->clkrate;
 do_div(clks, 1000000000UL);
 timeout = (unsigned int)clks + (data->timeout_clks << host->clkrt);
 writel((timeout + 255) / 256, host->base + MMC_RDTO);

 memset(&config, 0, sizeof(config));
 config.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
 config.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
 config.src_addr = host->res->start + MMC_RXFIFO;
 config.dst_addr = host->res->start + MMC_TXFIFO;
 config.src_maxburst = 32;
 config.dst_maxburst = 32;

 if (data->flags & MMC_DATA_READ) {
  host->dma_dir = DMA_FROM_DEVICE;
  direction = DMA_DEV_TO_MEM;
  chan = host->dma_chan_rx;
 } else {
  host->dma_dir = DMA_TO_DEVICE;
  direction = DMA_MEM_TO_DEV;
  chan = host->dma_chan_tx;
 }

 config.direction = direction;

 ret = dmaengine_slave_config(chan, &config);
 if (ret < 0) {
  dev_err(mmc_dev(host->mmc), "dma slave config failed\n");
  return;
 }

 host->dma_len = dma_map_sg(chan->device->dev, data->sg, data->sg_len,
       host->dma_dir);

 tx = dmaengine_prep_slave_sg(chan, data->sg, host->dma_len, direction,
         DMA_PREP_INTERRUPT);
 if (!tx) {
  dev_err(mmc_dev(host->mmc), "prep_slave_sg() failed\n");
  return;
 }

 if (!(data->flags & MMC_DATA_READ)) {
  tx->callback = pxamci_dma_irq;
  tx->callback_param = host;
 }

 host->dma_cookie = dmaengine_submit(tx);







 if (!cpu_is_pxa27x() || data->flags & MMC_DATA_READ)
  dma_async_issue_pending(chan);
}
