
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {struct intel_spi* priv; } ;
struct intel_spi {scalar_t__ swseq_reg; scalar_t__ base; } ;


 scalar_t__ FADDR ;
 int OPTYPE_READ_NO_ADDR ;
 int intel_spi_hw_cycle (struct intel_spi*,int ,int) ;
 int intel_spi_read_block (struct intel_spi*,int *,int) ;
 int intel_spi_sw_cycle (struct intel_spi*,int ,int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int intel_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
{
 struct intel_spi *ispi = nor->priv;
 int ret;


 writel(0, ispi->base + FADDR);

 if (ispi->swseq_reg)
  ret = intel_spi_sw_cycle(ispi, opcode, len,
      OPTYPE_READ_NO_ADDR);
 else
  ret = intel_spi_hw_cycle(ispi, opcode, len);

 if (ret)
  return ret;

 return intel_spi_read_block(ispi, buf, len);
}
