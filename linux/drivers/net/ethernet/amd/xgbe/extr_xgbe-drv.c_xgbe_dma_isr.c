
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ channel_irq_mode; } ;
struct xgbe_channel {int napi; int dma_irq; struct xgbe_prv_data* pdata; } ;
typedef int irqreturn_t ;


 int DMA_CH_SR ;
 int IRQ_HANDLED ;
 int RI ;
 int TI ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,unsigned int) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;
 int __napi_schedule_irqoff (int *) ;
 int disable_irq_nosync (int ) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int xgbe_disable_rx_tx_int (struct xgbe_prv_data*,struct xgbe_channel*) ;

__attribute__((used)) static irqreturn_t xgbe_dma_isr(int irq, void *data)
{
 struct xgbe_channel *channel = data;
 struct xgbe_prv_data *pdata = channel->pdata;
 unsigned int dma_status;




 if (napi_schedule_prep(&channel->napi)) {

  if (pdata->channel_irq_mode)
   xgbe_disable_rx_tx_int(pdata, channel);
  else
   disable_irq_nosync(channel->dma_irq);


  __napi_schedule_irqoff(&channel->napi);
 }


 dma_status = 0;
 XGMAC_SET_BITS(dma_status, DMA_CH_SR, TI, 1);
 XGMAC_SET_BITS(dma_status, DMA_CH_SR, RI, 1);
 XGMAC_DMA_IOWRITE(channel, DMA_CH_SR, dma_status);

 return IRQ_HANDLED;
}
