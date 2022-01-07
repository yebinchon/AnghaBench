
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int dma_usable; } ;


 int R852_DMA1 ;
 int R852_DMA2 ;
 int R852_DMA_CAP ;
 int message (char*) ;
 int r852_enable_dma ;
 int r852_read_reg (struct r852_device*,int ) ;

__attribute__((used)) static void r852_dma_test(struct r852_device *dev)
{
 dev->dma_usable = (r852_read_reg(dev, R852_DMA_CAP) &
  (R852_DMA1 | R852_DMA2)) == (R852_DMA1 | R852_DMA2);

 if (!dev->dma_usable)
  message("Non dma capable device detected, dma disabled");

 if (!r852_enable_dma) {
  message("disabling dma on user request");
  dev->dma_usable = 0;
 }
}
