
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** chans; int lock; int completion; } ;
struct stm32_timers {TYPE_1__ dma; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (char*) ;
 int STM32_TIMERS_DMA_CH1 ;
 int STM32_TIMERS_DMA_CH4 ;
 size_t STM32_TIMERS_DMA_COM ;
 size_t STM32_TIMERS_DMA_TRIG ;
 size_t STM32_TIMERS_DMA_UP ;
 void* dma_request_slave_channel (struct device*,char*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static void stm32_timers_dma_probe(struct device *dev,
       struct stm32_timers *ddata)
{
 int i;
 char name[4];

 init_completion(&ddata->dma.completion);
 mutex_init(&ddata->dma.lock);


 for (i = STM32_TIMERS_DMA_CH1; i <= STM32_TIMERS_DMA_CH4; i++) {
  snprintf(name, ARRAY_SIZE(name), "ch%1d", i + 1);
  ddata->dma.chans[i] = dma_request_slave_channel(dev, name);
 }
 ddata->dma.chans[STM32_TIMERS_DMA_UP] =
  dma_request_slave_channel(dev, "up");
 ddata->dma.chans[STM32_TIMERS_DMA_TRIG] =
  dma_request_slave_channel(dev, "trig");
 ddata->dma.chans[STM32_TIMERS_DMA_COM] =
  dma_request_slave_channel(dev, "com");
}
