
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; int dma_irq; int dev; struct xlgmac_pdata* channel_head; int per_channel_irq; int dev_irq; } ;
struct xlgmac_channel {unsigned int channel_count; int dma_irq; int dev; struct xlgmac_channel* channel_head; int per_channel_irq; int dev_irq; } ;


 int devm_free_irq (int ,int ,struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_free_irqs(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;

 devm_free_irq(pdata->dev, pdata->dev_irq, pdata);

 if (!pdata->per_channel_irq)
  return;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++)
  devm_free_irq(pdata->dev, channel->dma_irq, channel);
}
