
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_nor {struct intel_spi* priv; } ;
struct intel_spi {int atomic_preopcode; scalar_t__ swseq_reg; scalar_t__ base; scalar_t__ sregs; scalar_t__ locked; } ;


 int EINVAL ;
 scalar_t__ FADDR ;
 int OPTYPE_WRITE_NO_ADDR ;
 scalar_t__ PREOP_OPTYPE ;
 int SPINOR_OP_WREN ;
 int intel_spi_hw_cycle (struct intel_spi*,int,int) ;
 int intel_spi_sw_cycle (struct intel_spi*,int,int,int ) ;
 int intel_spi_write_block (struct intel_spi*,int*,int) ;
 int readw (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int intel_spi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
{
 struct intel_spi *ispi = nor->priv;
 int ret;
 if (opcode == SPINOR_OP_WREN) {
  u16 preop;

  if (!ispi->swseq_reg)
   return 0;

  preop = readw(ispi->sregs + PREOP_OPTYPE);
  if ((preop & 0xff) != opcode && (preop >> 8) != opcode) {
   if (ispi->locked)
    return -EINVAL;
   writel(opcode, ispi->sregs + PREOP_OPTYPE);
  }





  ispi->atomic_preopcode = opcode;
  return 0;
 }

 writel(0, ispi->base + FADDR);


 ret = intel_spi_write_block(ispi, buf, len);
 if (ret)
  return ret;

 if (ispi->swseq_reg)
  return intel_spi_sw_cycle(ispi, opcode, len,
       OPTYPE_WRITE_NO_ADDR);
 return intel_spi_hw_cycle(ispi, opcode, len);
}
