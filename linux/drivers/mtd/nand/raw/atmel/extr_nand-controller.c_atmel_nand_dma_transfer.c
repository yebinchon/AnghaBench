
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {int * callback_param; int callback; } ;
struct atmel_nand_controller {int dev; int dmac; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_cookie_t ;
typedef int dma_addr_t ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DMA_CTRL_ACK ;
 int DMA_FROM_DEVICE ;
 int DMA_PREP_INTERRUPT ;
 int EIO ;
 int atmel_nand_dma_transfer_finished ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 int dma_map_single (int ,void*,size_t,int) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ dma_submit_error (int ) ;
 int dma_unmap_single (int ,int ,size_t,int) ;
 struct dma_async_tx_descriptor* dmaengine_prep_dma_memcpy (int ,int ,int ,size_t,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int finished ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int atmel_nand_dma_transfer(struct atmel_nand_controller *nc,
       void *buf, dma_addr_t dev_dma, size_t len,
       enum dma_data_direction dir)
{
 DECLARE_COMPLETION_ONSTACK(finished);
 dma_addr_t src_dma, dst_dma, buf_dma;
 struct dma_async_tx_descriptor *tx;
 dma_cookie_t cookie;

 buf_dma = dma_map_single(nc->dev, buf, len, dir);
 if (dma_mapping_error(nc->dev, dev_dma)) {
  dev_err(nc->dev,
   "Failed to prepare a buffer for DMA access\n");
  goto err;
 }

 if (dir == DMA_FROM_DEVICE) {
  src_dma = dev_dma;
  dst_dma = buf_dma;
 } else {
  src_dma = buf_dma;
  dst_dma = dev_dma;
 }

 tx = dmaengine_prep_dma_memcpy(nc->dmac, dst_dma, src_dma, len,
           DMA_CTRL_ACK | DMA_PREP_INTERRUPT);
 if (!tx) {
  dev_err(nc->dev, "Failed to prepare DMA memcpy\n");
  goto err_unmap;
 }

 tx->callback = atmel_nand_dma_transfer_finished;
 tx->callback_param = &finished;

 cookie = dmaengine_submit(tx);
 if (dma_submit_error(cookie)) {
  dev_err(nc->dev, "Failed to do DMA tx_submit\n");
  goto err_unmap;
 }

 dma_async_issue_pending(nc->dmac);
 wait_for_completion(&finished);

 return 0;

err_unmap:
 dma_unmap_single(nc->dev, buf_dma, len, dir);

err:
 dev_dbg(nc->dev, "Fall back to CPU I/O\n");

 return -EIO;
}
