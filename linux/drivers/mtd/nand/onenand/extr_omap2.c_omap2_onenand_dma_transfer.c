
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap2_onenand {int dma_chan; int dma_done; TYPE_1__* pdev; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;int * callback_param; int callback; } ;
typedef int dma_cookie_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 int dma_async_issue_pending (int ) ;
 scalar_t__ dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_dma_memcpy (int ,int ,int ,size_t,int ) ;
 int dmaengine_terminate_sync (int ) ;
 int msecs_to_jiffies (int) ;
 int omap2_onenand_dma_complete_func ;
 int reinit_completion (int *) ;
 int stub1 (struct dma_async_tx_descriptor*) ;
 int wait_for_completion_io_timeout (int *,int ) ;

__attribute__((used)) static inline int omap2_onenand_dma_transfer(struct omap2_onenand *c,
          dma_addr_t src, dma_addr_t dst,
          size_t count)
{
 struct dma_async_tx_descriptor *tx;
 dma_cookie_t cookie;

 tx = dmaengine_prep_dma_memcpy(c->dma_chan, dst, src, count, 0);
 if (!tx) {
  dev_err(&c->pdev->dev, "Failed to prepare DMA memcpy\n");
  return -EIO;
 }

 reinit_completion(&c->dma_done);

 tx->callback = omap2_onenand_dma_complete_func;
 tx->callback_param = &c->dma_done;

 cookie = tx->tx_submit(tx);
 if (dma_submit_error(cookie)) {
  dev_err(&c->pdev->dev, "Failed to do DMA tx_submit\n");
  return -EIO;
 }

 dma_async_issue_pending(c->dma_chan);

 if (!wait_for_completion_io_timeout(&c->dma_done,
         msecs_to_jiffies(20))) {
  dmaengine_terminate_sync(c->dma_chan);
  return -ETIMEDOUT;
 }

 return 0;
}
