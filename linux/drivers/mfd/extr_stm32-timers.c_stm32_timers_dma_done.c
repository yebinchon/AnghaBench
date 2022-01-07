
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_timers_dma {int completion; TYPE_1__* chan; } ;
struct dma_tx_state {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_2__ {int cookie; } ;


 int DMA_COMPLETE ;
 int complete (int *) ;
 int dmaengine_tx_status (TYPE_1__*,int ,struct dma_tx_state*) ;

__attribute__((used)) static void stm32_timers_dma_done(void *p)
{
 struct stm32_timers_dma *dma = p;
 struct dma_tx_state state;
 enum dma_status status;

 status = dmaengine_tx_status(dma->chan, dma->chan->cookie, &state);
 if (status == DMA_COMPLETE)
  complete(&dma->completion);
}
