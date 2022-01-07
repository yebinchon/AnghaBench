
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct peespi {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_ESPI_DIP2_ERR_COUNT ;
 scalar_t__ A_ESPI_INTR_STATUS ;
 scalar_t__ A_PL_CAUSE ;
 int F_PL_INTR_ESPI ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void t1_espi_intr_clear(struct peespi *espi)
{
 readl(espi->adapter->regs + A_ESPI_DIP2_ERR_COUNT);
 writel(0xffffffff, espi->adapter->regs + A_ESPI_INTR_STATUS);
 writel(F_PL_INTR_ESPI, espi->adapter->regs + A_PL_CAUSE);
}
