
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int dma_error; int dummy_dma_page_physical_address; } ;


 int DMA_IRQ_ACK_MASK ;
 int DMA_IRQ_EN_MASK ;
 int R592_FIFO_DMA ;
 int R592_FIFO_DMA_SETTINGS ;
 int R592_FIFO_DMA_SETTINGS_EN ;
 int R592_REG_MSC ;
 int r592_clear_reg_mask (struct r592_device*,int ,int ) ;
 int r592_write_reg (struct r592_device*,int ,int ) ;

__attribute__((used)) static void r592_stop_dma(struct r592_device *dev, int error)
{
 r592_clear_reg_mask(dev, R592_FIFO_DMA_SETTINGS,
  R592_FIFO_DMA_SETTINGS_EN);


 r592_write_reg(dev, R592_FIFO_DMA,
   dev->dummy_dma_page_physical_address);

 r592_clear_reg_mask(dev, R592_REG_MSC, DMA_IRQ_EN_MASK);
 r592_clear_reg_mask(dev, R592_REG_MSC, DMA_IRQ_ACK_MASK);
 dev->dma_error = error;
}
