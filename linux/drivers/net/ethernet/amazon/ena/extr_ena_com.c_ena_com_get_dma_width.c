
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_com_dev {int dma_addr_bits; } ;


 int EINVAL ;
 int ENA_MAX_PHYS_ADDR_SIZE_BITS ;
 int ENA_MMIO_READ_TIMEOUT ;
 int ENA_REGS_CAPS_DMA_ADDR_WIDTH_MASK ;
 int ENA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT ;
 int ENA_REGS_CAPS_OFF ;
 int ETIME ;
 int ena_com_reg_bar_read32 (struct ena_com_dev*,int ) ;
 int pr_debug (char*,int) ;
 int pr_err (char*,...) ;
 scalar_t__ unlikely (int) ;

int ena_com_get_dma_width(struct ena_com_dev *ena_dev)
{
 u32 caps = ena_com_reg_bar_read32(ena_dev, ENA_REGS_CAPS_OFF);
 int width;

 if (unlikely(caps == ENA_MMIO_READ_TIMEOUT)) {
  pr_err("Reg read timeout occurred\n");
  return -ETIME;
 }

 width = (caps & ENA_REGS_CAPS_DMA_ADDR_WIDTH_MASK) >>
  ENA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT;

 pr_debug("ENA dma width: %d\n", width);

 if ((width < 32) || width > ENA_MAX_PHYS_ADDR_SIZE_BITS) {
  pr_err("DMA width illegal value: %d\n", width);
  return -EINVAL;
 }

 ena_dev->dma_addr_bits = width;

 return width;
}
