
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltq_etop_priv {TYPE_1__* ch; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int napi; } ;


 int IRQ_HANDLED ;
 int LTQ_DMA_CH0_INT ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t
ltq_etop_dma_irq(int irq, void *_priv)
{
 struct ltq_etop_priv *priv = _priv;
 int ch = irq - LTQ_DMA_CH0_INT;

 napi_schedule(&priv->ch[ch].napi);
 return IRQ_HANDLED;
}
