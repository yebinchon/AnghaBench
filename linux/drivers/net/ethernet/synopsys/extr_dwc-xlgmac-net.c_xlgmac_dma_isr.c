
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_channel {int napi; int dma_irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int __napi_schedule_irqoff (int *) ;
 int disable_irq_nosync (int ) ;
 scalar_t__ napi_schedule_prep (int *) ;

__attribute__((used)) static irqreturn_t xlgmac_dma_isr(int irq, void *data)
{
 struct xlgmac_channel *channel = data;




 if (napi_schedule_prep(&channel->napi)) {

  disable_irq_nosync(channel->dma_irq);


  __napi_schedule_irqoff(&channel->napi);
 }

 return IRQ_HANDLED;
}
