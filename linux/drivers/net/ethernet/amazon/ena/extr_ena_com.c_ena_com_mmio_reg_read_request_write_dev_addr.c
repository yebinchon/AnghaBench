
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_com_mmio_read {int read_resp_dma_addr; } ;
struct ena_com_dev {scalar_t__ reg_bar; struct ena_com_mmio_read mmio_read; } ;


 int ENA_DMA_ADDR_TO_UINT32_HIGH (int ) ;
 int ENA_DMA_ADDR_TO_UINT32_LOW (int ) ;
 scalar_t__ ENA_REGS_MMIO_RESP_HI_OFF ;
 scalar_t__ ENA_REGS_MMIO_RESP_LO_OFF ;
 int writel (int ,scalar_t__) ;

void ena_com_mmio_reg_read_request_write_dev_addr(struct ena_com_dev *ena_dev)
{
 struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;
 u32 addr_low, addr_high;

 addr_low = ENA_DMA_ADDR_TO_UINT32_LOW(mmio_read->read_resp_dma_addr);
 addr_high = ENA_DMA_ADDR_TO_UINT32_HIGH(mmio_read->read_resp_dma_addr);

 writel(addr_low, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_LO_OFF);
 writel(addr_high, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_HI_OFF);
}
