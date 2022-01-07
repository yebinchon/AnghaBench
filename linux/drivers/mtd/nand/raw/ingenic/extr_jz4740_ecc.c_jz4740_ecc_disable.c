
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ingenic_ecc {scalar_t__ base; } ;


 int JZ_NAND_ECC_CTRL_ENABLE ;
 scalar_t__ JZ_REG_NAND_ECC_CTRL ;
 scalar_t__ JZ_REG_NAND_IRQ_STAT ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void jz4740_ecc_disable(struct ingenic_ecc *ecc)
{
 u32 reg;

 writel(0, ecc->base + JZ_REG_NAND_IRQ_STAT);
 reg = readl(ecc->base + JZ_REG_NAND_ECC_CTRL);
 reg &= ~JZ_NAND_ECC_CTRL_ENABLE;
 writel(reg, ecc->base + JZ_REG_NAND_ECC_CTRL);
}
