
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {int dummy; } ;


 int R852_CARD_IRQ_ENABLE ;
 int R852_CARD_IRQ_MASK ;
 int R852_CARD_IRQ_STA ;
 int R852_DMA_IRQ_ENABLE ;
 int R852_DMA_IRQ_MASK ;
 int R852_DMA_IRQ_STA ;
 int r852_read_reg (struct r852_device*,int ) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;
 int r852_write_reg (struct r852_device*,int ,int) ;
 int r852_write_reg_dword (struct r852_device*,int ,int) ;

__attribute__((used)) static void r852_disable_irqs(struct r852_device *dev)
{
 uint8_t reg;
 reg = r852_read_reg(dev, R852_CARD_IRQ_ENABLE);
 r852_write_reg(dev, R852_CARD_IRQ_ENABLE, reg & ~R852_CARD_IRQ_MASK);

 reg = r852_read_reg_dword(dev, R852_DMA_IRQ_ENABLE);
 r852_write_reg_dword(dev, R852_DMA_IRQ_ENABLE,
     reg & ~R852_DMA_IRQ_MASK);

 r852_write_reg(dev, R852_CARD_IRQ_STA, R852_CARD_IRQ_MASK);
 r852_write_reg_dword(dev, R852_DMA_IRQ_STA, R852_DMA_IRQ_MASK);
}
