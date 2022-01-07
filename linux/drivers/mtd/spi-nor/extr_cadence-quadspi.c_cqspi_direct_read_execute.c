
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct spi_nor {int dev; struct cqspi_flash_pdata* priv; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct cqspi_st* callback_param; int callback; } ;
struct cqspi_st {int rx_chan; int rx_dma_complete; scalar_t__ ahb_base; scalar_t__ mmap_phys_base; } ;
struct cqspi_flash_pdata {struct cqspi_st* cqspi; } ;
typedef scalar_t__ loff_t ;
typedef enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef int dma_cookie_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_CTRL_ACK ;
 int DMA_FROM_DEVICE ;
 int DMA_PREP_INTERRUPT ;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int cqspi_rx_dma_callback ;
 int dev_err (int ,char*,...) ;
 int dma_async_issue_pending (int ) ;
 scalar_t__ dma_map_single (int ,int *,size_t,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_submit_error (int ) ;
 int dma_unmap_single (int ,scalar_t__,size_t,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_dma_memcpy (int ,scalar_t__,scalar_t__,size_t,int) ;
 int dmaengine_terminate_sync (int ) ;
 int memcpy_fromio (int *,scalar_t__,size_t) ;
 int msecs_to_jiffies (size_t) ;
 int reinit_completion (int *) ;
 int stub1 (struct dma_async_tx_descriptor*) ;
 int virt_addr_valid (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
         loff_t from, size_t len)
{
 struct cqspi_flash_pdata *f_pdata = nor->priv;
 struct cqspi_st *cqspi = f_pdata->cqspi;
 enum dma_ctrl_flags flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
 dma_addr_t dma_src = (dma_addr_t)cqspi->mmap_phys_base + from;
 int ret = 0;
 struct dma_async_tx_descriptor *tx;
 dma_cookie_t cookie;
 dma_addr_t dma_dst;

 if (!cqspi->rx_chan || !virt_addr_valid(buf)) {
  memcpy_fromio(buf, cqspi->ahb_base + from, len);
  return 0;
 }

 dma_dst = dma_map_single(nor->dev, buf, len, DMA_FROM_DEVICE);
 if (dma_mapping_error(nor->dev, dma_dst)) {
  dev_err(nor->dev, "dma mapping failed\n");
  return -ENOMEM;
 }
 tx = dmaengine_prep_dma_memcpy(cqspi->rx_chan, dma_dst, dma_src,
           len, flags);
 if (!tx) {
  dev_err(nor->dev, "device_prep_dma_memcpy error\n");
  ret = -EIO;
  goto err_unmap;
 }

 tx->callback = cqspi_rx_dma_callback;
 tx->callback_param = cqspi;
 cookie = tx->tx_submit(tx);
 reinit_completion(&cqspi->rx_dma_complete);

 ret = dma_submit_error(cookie);
 if (ret) {
  dev_err(nor->dev, "dma_submit_error %d\n", cookie);
  ret = -EIO;
  goto err_unmap;
 }

 dma_async_issue_pending(cqspi->rx_chan);
 if (!wait_for_completion_timeout(&cqspi->rx_dma_complete,
      msecs_to_jiffies(len))) {
  dmaengine_terminate_sync(cqspi->rx_chan);
  dev_err(nor->dev, "DMA wait_for_completion_timeout\n");
  ret = -ETIMEDOUT;
  goto err_unmap;
 }

err_unmap:
 dma_unmap_single(nor->dev, dma_dst, len, DMA_FROM_DEVICE);

 return ret;
}
