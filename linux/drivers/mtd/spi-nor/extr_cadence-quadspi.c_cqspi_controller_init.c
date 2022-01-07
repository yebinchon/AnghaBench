
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cqspi_st {int fifo_depth; int trigger_address; int fifo_width; scalar_t__ iobase; } ;


 scalar_t__ CQSPI_REG_CONFIG ;
 int CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL ;
 scalar_t__ CQSPI_REG_INDIRECTRDWATERMARK ;
 scalar_t__ CQSPI_REG_INDIRECTTRIGGER ;
 scalar_t__ CQSPI_REG_INDIRECTWRWATERMARK ;
 scalar_t__ CQSPI_REG_IRQMASK ;
 scalar_t__ CQSPI_REG_REMAP ;
 scalar_t__ CQSPI_REG_SRAMPARTITION ;
 int cqspi_controller_enable (struct cqspi_st*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cqspi_controller_init(struct cqspi_st *cqspi)
{
 u32 reg;

 cqspi_controller_enable(cqspi, 0);


 writel(0, cqspi->iobase + CQSPI_REG_REMAP);


 writel(0, cqspi->iobase + CQSPI_REG_IRQMASK);


 writel(cqspi->fifo_depth / 2, cqspi->iobase + CQSPI_REG_SRAMPARTITION);


 writel(cqspi->trigger_address,
        cqspi->iobase + CQSPI_REG_INDIRECTTRIGGER);


 writel(cqspi->fifo_depth * cqspi->fifo_width / 2,
        cqspi->iobase + CQSPI_REG_INDIRECTRDWATERMARK);

 writel(cqspi->fifo_depth * cqspi->fifo_width / 8,
        cqspi->iobase + CQSPI_REG_INDIRECTWRWATERMARK);


 reg = readl(cqspi->iobase + CQSPI_REG_CONFIG);
 reg |= CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL;
 writel(reg, cqspi->iobase + CQSPI_REG_CONFIG);

 cqspi_controller_enable(cqspi, 1);
}
