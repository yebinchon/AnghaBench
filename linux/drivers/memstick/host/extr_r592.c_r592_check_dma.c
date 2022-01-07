
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int dma_capable; } ;


 int R592_FIFO_DMA_SETTINGS ;
 int R592_FIFO_DMA_SETTINGS_CAP ;
 scalar_t__ r592_enable_dma ;
 int r592_read_reg (struct r592_device*,int ) ;

__attribute__((used)) static void r592_check_dma(struct r592_device *dev)
{
 dev->dma_capable = r592_enable_dma &&
  (r592_read_reg(dev, R592_FIFO_DMA_SETTINGS) &
   R592_FIFO_DMA_SETTINGS_CAP);
}
