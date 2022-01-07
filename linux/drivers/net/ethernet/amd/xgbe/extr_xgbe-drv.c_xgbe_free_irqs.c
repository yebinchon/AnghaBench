
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {scalar_t__ dev_irq; scalar_t__ ecc_irq; unsigned int channel_count; scalar_t__ dma_irq; int dev; struct xgbe_prv_data** channel; int per_channel_irq; TYPE_1__* vdata; } ;
struct xgbe_channel {scalar_t__ dev_irq; scalar_t__ ecc_irq; unsigned int channel_count; scalar_t__ dma_irq; int dev; struct xgbe_channel** channel; int per_channel_irq; TYPE_1__* vdata; } ;
struct TYPE_2__ {scalar_t__ ecc_support; } ;


 int devm_free_irq (int ,scalar_t__,struct xgbe_prv_data*) ;
 int irq_set_affinity_hint (scalar_t__,int *) ;

__attribute__((used)) static void xgbe_free_irqs(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 devm_free_irq(pdata->dev, pdata->dev_irq, pdata);

 if (pdata->vdata->ecc_support && (pdata->dev_irq != pdata->ecc_irq))
  devm_free_irq(pdata->dev, pdata->ecc_irq, pdata);

 if (!pdata->per_channel_irq)
  return;

 for (i = 0; i < pdata->channel_count; i++) {
  channel = pdata->channel[i];

  irq_set_affinity_hint(channel->dma_irq, ((void*)0));
  devm_free_irq(pdata->dev, channel->dma_irq, channel);
 }
}
