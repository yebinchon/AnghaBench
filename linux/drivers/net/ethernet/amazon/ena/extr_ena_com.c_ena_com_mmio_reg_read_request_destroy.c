
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_mmio_read {int * read_resp; int read_resp_dma_addr; } ;
struct ena_com_dev {int dmadev; scalar_t__ reg_bar; struct ena_com_mmio_read mmio_read; } ;


 scalar_t__ ENA_REGS_MMIO_RESP_HI_OFF ;
 scalar_t__ ENA_REGS_MMIO_RESP_LO_OFF ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int writel (int,scalar_t__) ;

void ena_com_mmio_reg_read_request_destroy(struct ena_com_dev *ena_dev)
{
 struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;

 writel(0x0, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_LO_OFF);
 writel(0x0, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_HI_OFF);

 dma_free_coherent(ena_dev->dmadev, sizeof(*mmio_read->read_resp),
     mmio_read->read_resp, mmio_read->read_resp_dma_addr);

 mmio_read->read_resp = ((void*)0);
}
