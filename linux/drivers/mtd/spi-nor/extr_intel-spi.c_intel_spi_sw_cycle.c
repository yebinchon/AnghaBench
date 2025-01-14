
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct intel_spi {int atomic_preopcode; scalar_t__ sregs; } ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int INTEL_SPI_FIFO_SZ ;


 scalar_t__ PREOP_OPTYPE ;
 scalar_t__ SSFSTS_CTL ;
 int SSFSTS_CTL_ACS ;
 int SSFSTS_CTL_AEL ;
 int SSFSTS_CTL_COP_SHIFT ;
 int SSFSTS_CTL_DBC_SHIFT ;
 int SSFSTS_CTL_DS ;
 int SSFSTS_CTL_FCERR ;
 int SSFSTS_CTL_FDONE ;
 int SSFSTS_CTL_SCGO ;
 int SSFSTS_CTL_SPOP ;
 int intel_spi_opcode_index (struct intel_spi*,int,int) ;
 int intel_spi_wait_sw_busy (struct intel_spi*) ;
 int readl (scalar_t__) ;
 int readw (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int intel_spi_sw_cycle(struct intel_spi *ispi, u8 opcode, int len,
         int optype)
{
 u32 val = 0, status;
 u8 atomic_preopcode;
 int ret;

 ret = intel_spi_opcode_index(ispi, opcode, optype);
 if (ret < 0)
  return ret;

 if (len > INTEL_SPI_FIFO_SZ)
  return -EINVAL;





 atomic_preopcode = ispi->atomic_preopcode;
 ispi->atomic_preopcode = 0;


 if (len > 0)
  val = ((len - 1) << SSFSTS_CTL_DBC_SHIFT) | SSFSTS_CTL_DS;
 val |= ret << SSFSTS_CTL_COP_SHIFT;
 val |= SSFSTS_CTL_FCERR | SSFSTS_CTL_FDONE;
 val |= SSFSTS_CTL_SCGO;
 if (atomic_preopcode) {
  u16 preop;

  switch (optype) {
  case 129:
  case 128:

   preop = readw(ispi->sregs + PREOP_OPTYPE);
   if ((preop & 0xff) == atomic_preopcode)
    ;
   else if ((preop >> 8) == atomic_preopcode)
    val |= SSFSTS_CTL_SPOP;
   else
    return -EINVAL;


   val |= SSFSTS_CTL_ACS;
   break;

  default:
   return -EINVAL;
  }

 }
 writel(val, ispi->sregs + SSFSTS_CTL);

 ret = intel_spi_wait_sw_busy(ispi);
 if (ret)
  return ret;

 status = readl(ispi->sregs + SSFSTS_CTL);
 if (status & SSFSTS_CTL_FCERR)
  return -EIO;
 else if (status & SSFSTS_CTL_AEL)
  return -EACCES;

 return 0;
}
