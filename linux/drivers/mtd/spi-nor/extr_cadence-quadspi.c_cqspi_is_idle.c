
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cqspi_st {scalar_t__ iobase; } ;


 scalar_t__ CQSPI_REG_CONFIG ;
 int CQSPI_REG_CONFIG_IDLE_LSB ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool cqspi_is_idle(struct cqspi_st *cqspi)
{
 u32 reg = readl(cqspi->iobase + CQSPI_REG_CONFIG);

 return reg & (1 << CQSPI_REG_CONFIG_IDLE_LSB);
}
