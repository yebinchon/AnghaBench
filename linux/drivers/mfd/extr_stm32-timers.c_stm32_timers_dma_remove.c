
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* chans; } ;
struct stm32_timers {TYPE_1__ dma; } ;
struct device {int dummy; } ;


 int STM32_TIMERS_DMA_CH1 ;
 int STM32_TIMERS_MAX_DMAS ;
 int dma_release_channel (scalar_t__) ;

__attribute__((used)) static void stm32_timers_dma_remove(struct device *dev,
        struct stm32_timers *ddata)
{
 int i;

 for (i = STM32_TIMERS_DMA_CH1; i < STM32_TIMERS_MAX_DMAS; i++)
  if (ddata->dma.chans[i])
   dma_release_channel(ddata->dma.chans[i]);
}
