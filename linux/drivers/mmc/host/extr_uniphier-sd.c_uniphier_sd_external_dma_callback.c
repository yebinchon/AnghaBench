
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_sd_priv {int dma_dir; } ;
struct tmio_mmc_host {int lock; TYPE_1__* data; int sg_len; int sg_ptr; int mmc; } ;
struct dmaengine_result {scalar_t__ result; } ;
struct TYPE_2__ {int error; } ;


 scalar_t__ DMA_TRANS_NOERROR ;
 int ETIMEDOUT ;
 int TMIO_STAT_DATAEND ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_mmc_do_data_irq (struct tmio_mmc_host*) ;
 int tmio_mmc_enable_mmc_irqs (struct tmio_mmc_host*,int ) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_external_dma_callback(void *param,
     const struct dmaengine_result *result)
{
 struct tmio_mmc_host *host = param;
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);
 unsigned long flags;

 dma_unmap_sg(mmc_dev(host->mmc), host->sg_ptr, host->sg_len,
       priv->dma_dir);

 spin_lock_irqsave(&host->lock, flags);

 if (result->result == DMA_TRANS_NOERROR) {







  tmio_mmc_enable_mmc_irqs(host, TMIO_STAT_DATAEND);
 } else {
  host->data->error = -ETIMEDOUT;
  tmio_mmc_do_data_irq(host);
 }

 spin_unlock_irqrestore(&host->lock, flags);
}
