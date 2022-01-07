
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u8 ;
struct ingenic_ecc_params {int bytes; int size; } ;
struct ingenic_ecc {scalar_t__ base; } ;


 int EBADMSG ;
 int ETIMEDOUT ;
 int JZ_NAND_ECC_CTRL_ENABLE ;
 int JZ_NAND_ECC_CTRL_PAR_READY ;
 int JZ_NAND_STATUS_DEC_FINISH ;
 int JZ_NAND_STATUS_ERROR ;
 int JZ_NAND_STATUS_ERR_COUNT ;
 int JZ_NAND_STATUS_UNCOR_ERROR ;
 scalar_t__ JZ_REG_NAND_ECC_CTRL ;
 scalar_t__ JZ_REG_NAND_ERR (int) ;
 scalar_t__ JZ_REG_NAND_IRQ_STAT ;
 scalar_t__ JZ_REG_NAND_PAR0 ;
 int jz4740_ecc_reset (struct ingenic_ecc*,int) ;
 int jz_nand_correct_data (int *,int,int) ;
 int readl (scalar_t__) ;
 int writeb (int ,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int jz4740_ecc_correct(struct ingenic_ecc *ecc,
         struct ingenic_ecc_params *params,
         u8 *buf, u8 *ecc_code)
{
 int i, error_count, index;
 uint32_t reg, status, error;
 unsigned int timeout = 1000;

 jz4740_ecc_reset(ecc, 0);

 for (i = 0; i < params->bytes; ++i)
  writeb(ecc_code[i], ecc->base + JZ_REG_NAND_PAR0 + i);

 reg = readl(ecc->base + JZ_REG_NAND_ECC_CTRL);
 reg |= JZ_NAND_ECC_CTRL_PAR_READY;
 writel(reg, ecc->base + JZ_REG_NAND_ECC_CTRL);

 do {
  status = readl(ecc->base + JZ_REG_NAND_IRQ_STAT);
 } while (!(status & JZ_NAND_STATUS_DEC_FINISH) && --timeout);

 if (timeout == 0)
  return -ETIMEDOUT;

 reg = readl(ecc->base + JZ_REG_NAND_ECC_CTRL);
 reg &= ~JZ_NAND_ECC_CTRL_ENABLE;
 writel(reg, ecc->base + JZ_REG_NAND_ECC_CTRL);

 if (status & JZ_NAND_STATUS_ERROR) {
  if (status & JZ_NAND_STATUS_UNCOR_ERROR)
   return -EBADMSG;

  error_count = (status & JZ_NAND_STATUS_ERR_COUNT) >> 29;

  for (i = 0; i < error_count; ++i) {
   error = readl(ecc->base + JZ_REG_NAND_ERR(i));
   index = ((error >> 16) & 0x1ff) - 1;
   if (index >= 0 && index < params->size)
    jz_nand_correct_data(buf, index, error & 0x1ff);
  }

  return error_count;
 }

 return 0;
}
