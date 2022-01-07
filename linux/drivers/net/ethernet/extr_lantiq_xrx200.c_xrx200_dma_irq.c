
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrx200_chan {int napi; int dma; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ltq_dma_ack_irq (int *) ;
 int ltq_dma_disable_irq (int *) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t xrx200_dma_irq(int irq, void *ptr)
{
 struct xrx200_chan *ch = ptr;

 ltq_dma_disable_irq(&ch->dma);
 ltq_dma_ack_irq(&ch->dma);

 napi_schedule(&ch->napi);

 return IRQ_HANDLED;
}
