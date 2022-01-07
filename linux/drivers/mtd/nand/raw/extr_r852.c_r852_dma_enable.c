
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {scalar_t__ dma_state; int phys_dma_addr; int phys_bounce_buffer; scalar_t__ dma_dir; } ;


 scalar_t__ DMA_INTERNAL ;
 int R852_DMA_ADDR ;
 int R852_DMA_INTERNAL ;
 int R852_DMA_IRQ_ENABLE ;
 int R852_DMA_IRQ_ERROR ;
 int R852_DMA_IRQ_INTERNAL ;
 int R852_DMA_IRQ_MEMORY ;
 int R852_DMA_MEMORY ;
 int R852_DMA_READ ;
 int R852_DMA_SETTINGS ;
 int cpu_to_le32 (int ) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;
 int r852_write_reg_dword (struct r852_device*,int ,int) ;

__attribute__((used)) static void r852_dma_enable(struct r852_device *dev)
{
 uint8_t dma_reg, dma_irq_reg;


 dma_reg = r852_read_reg_dword(dev, R852_DMA_SETTINGS);
 dma_reg &= ~(R852_DMA_READ | R852_DMA_INTERNAL | R852_DMA_MEMORY);

 if (dev->dma_dir)
  dma_reg |= R852_DMA_READ;

 if (dev->dma_state == DMA_INTERNAL) {
  dma_reg |= R852_DMA_INTERNAL;


  r852_write_reg_dword(dev, R852_DMA_ADDR,
   cpu_to_le32(dev->phys_bounce_buffer));
 } else {
  dma_reg |= R852_DMA_MEMORY;
  r852_write_reg_dword(dev, R852_DMA_ADDR,
   cpu_to_le32(dev->phys_dma_addr));
 }


 r852_read_reg_dword(dev, R852_DMA_ADDR);

 r852_write_reg_dword(dev, R852_DMA_SETTINGS, dma_reg);


 dma_irq_reg = r852_read_reg_dword(dev, R852_DMA_IRQ_ENABLE);
 r852_write_reg_dword(dev, R852_DMA_IRQ_ENABLE,
  dma_irq_reg |
  R852_DMA_IRQ_INTERNAL |
  R852_DMA_IRQ_ERROR |
  R852_DMA_IRQ_MEMORY);
}
