
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct fsmc_nand_data {scalar_t__ regs_va; } ;


 int FSMC_ECCEN ;
 int FSMC_ECCPLEN_256 ;
 scalar_t__ FSMC_PC ;
 struct fsmc_nand_data* nand_to_fsmc (struct nand_chip*) ;
 int readl (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void fsmc_enable_hwecc(struct nand_chip *chip, int mode)
{
 struct fsmc_nand_data *host = nand_to_fsmc(chip);

 writel_relaxed(readl(host->regs_va + FSMC_PC) & ~FSMC_ECCPLEN_256,
         host->regs_va + FSMC_PC);
 writel_relaxed(readl(host->regs_va + FSMC_PC) & ~FSMC_ECCEN,
         host->regs_va + FSMC_PC);
 writel_relaxed(readl(host->regs_va + FSMC_PC) | FSMC_ECCEN,
         host->regs_va + FSMC_PC);
}
