
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intel_spi {scalar_t__ base; } ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 scalar_t__ HSFSTS_CTL ;
 int HSFSTS_CTL_AEL ;
 int HSFSTS_CTL_FCERR ;
 int HSFSTS_CTL_FCYCLE_MASK ;
 int HSFSTS_CTL_FCYCLE_RDID ;
 int HSFSTS_CTL_FCYCLE_RDSR ;
 int HSFSTS_CTL_FCYCLE_WRSR ;
 int HSFSTS_CTL_FDBC_MASK ;
 int HSFSTS_CTL_FDBC_SHIFT ;
 int HSFSTS_CTL_FDONE ;
 int HSFSTS_CTL_FGO ;
 int INTEL_SPI_FIFO_SZ ;



 int intel_spi_wait_hw_busy (struct intel_spi*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int intel_spi_hw_cycle(struct intel_spi *ispi, u8 opcode, int len)
{
 u32 val, status;
 int ret;

 val = readl(ispi->base + HSFSTS_CTL);
 val &= ~(HSFSTS_CTL_FCYCLE_MASK | HSFSTS_CTL_FDBC_MASK);

 switch (opcode) {
 case 130:
  val |= HSFSTS_CTL_FCYCLE_RDID;
  break;
 case 128:
  val |= HSFSTS_CTL_FCYCLE_WRSR;
  break;
 case 129:
  val |= HSFSTS_CTL_FCYCLE_RDSR;
  break;
 default:
  return -EINVAL;
 }

 if (len > INTEL_SPI_FIFO_SZ)
  return -EINVAL;

 val |= (len - 1) << HSFSTS_CTL_FDBC_SHIFT;
 val |= HSFSTS_CTL_FCERR | HSFSTS_CTL_FDONE;
 val |= HSFSTS_CTL_FGO;
 writel(val, ispi->base + HSFSTS_CTL);

 ret = intel_spi_wait_hw_busy(ispi);
 if (ret)
  return ret;

 status = readl(ispi->base + HSFSTS_CTL);
 if (status & HSFSTS_CTL_FCERR)
  return -EIO;
 else if (status & HSFSTS_CTL_AEL)
  return -EACCES;

 return 0;
}
