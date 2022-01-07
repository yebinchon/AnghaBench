
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ispstat {int buf_size; int dma_ch; TYPE_2__* isp; TYPE_1__* active_buf; } ;
struct dma_slave_config {int src_maxburst; int src_addr_width; scalar_t__ src_addr; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct ispstat* callback_param; int callback; } ;
typedef int dma_cookie_t ;
typedef int dma_addr_t ;
typedef int cfg ;
struct TYPE_6__ {int dev; scalar_t__ mmio_hist_base_phys; } ;
struct TYPE_5__ {int dma_addr; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ISPHIST_ADDR ;
 int ISPHIST_CNT ;
 int ISPHIST_CNT_CLEAR ;
 scalar_t__ ISPHIST_DATA ;
 int OMAP3_ISP_IOMEM_HIST ;
 int STAT_BUF_WAITING_DMA ;
 int STAT_NO_BUF ;
 int dev_dbg (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 scalar_t__ dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (int ,int ,int,int ,int ) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int hist_dma_cb ;
 int hist_reset_mem (struct ispstat*) ;
 int isp_reg_set (TYPE_2__*,int ,int ,int ) ;
 int isp_reg_writel (TYPE_2__*,int ,int ,int ) ;
 int memset (struct dma_slave_config*,int ,int) ;
 int omap3isp_flush (TYPE_2__*) ;
 int stub1 (struct dma_async_tx_descriptor*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hist_buf_dma(struct ispstat *hist)
{
 dma_addr_t dma_addr = hist->active_buf->dma_addr;
 struct dma_async_tx_descriptor *tx;
 struct dma_slave_config cfg;
 dma_cookie_t cookie;
 int ret;

 if (unlikely(!dma_addr)) {
  dev_dbg(hist->isp->dev, "hist: invalid DMA buffer address\n");
  goto error;
 }

 isp_reg_writel(hist->isp, 0, OMAP3_ISP_IOMEM_HIST, ISPHIST_ADDR);
 isp_reg_set(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT,
      ISPHIST_CNT_CLEAR);
 omap3isp_flush(hist->isp);

 memset(&cfg, 0, sizeof(cfg));
 cfg.src_addr = hist->isp->mmio_hist_base_phys + ISPHIST_DATA;
 cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 cfg.src_maxburst = hist->buf_size / 4;

 ret = dmaengine_slave_config(hist->dma_ch, &cfg);
 if (ret < 0) {
  dev_dbg(hist->isp->dev,
   "hist: DMA slave configuration failed\n");
  goto error;
 }

 tx = dmaengine_prep_slave_single(hist->dma_ch, dma_addr,
      hist->buf_size, DMA_DEV_TO_MEM,
      DMA_CTRL_ACK);
 if (tx == ((void*)0)) {
  dev_dbg(hist->isp->dev,
   "hist: DMA slave preparation failed\n");
  goto error;
 }

 tx->callback = hist_dma_cb;
 tx->callback_param = hist;
 cookie = tx->tx_submit(tx);
 if (dma_submit_error(cookie)) {
  dev_dbg(hist->isp->dev, "hist: DMA submission failed\n");
  goto error;
 }

 dma_async_issue_pending(hist->dma_ch);

 return STAT_BUF_WAITING_DMA;

error:
 hist_reset_mem(hist);
 return STAT_NO_BUF;
}
