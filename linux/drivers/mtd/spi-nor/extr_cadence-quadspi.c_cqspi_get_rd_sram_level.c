
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cqspi_st {scalar_t__ iobase; } ;


 scalar_t__ CQSPI_REG_SDRAMLEVEL ;
 int CQSPI_REG_SDRAMLEVEL_RD_LSB ;
 int CQSPI_REG_SDRAMLEVEL_RD_MASK ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 cqspi_get_rd_sram_level(struct cqspi_st *cqspi)
{
 u32 reg = readl(cqspi->iobase + CQSPI_REG_SDRAMLEVEL);

 reg >>= CQSPI_REG_SDRAMLEVEL_RD_LSB;
 return reg & CQSPI_REG_SDRAMLEVEL_RD_MASK;
}
