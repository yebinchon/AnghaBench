
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int io_base; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_NCE ;
 int SLCCFG_CE_LOW ;
 int SLC_ADDR (int ) ;
 int SLC_CFG (int ) ;
 int SLC_CMD (int ) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void lpc32xx_nand_cmd_ctrl(struct nand_chip *chip, int cmd,
      unsigned int ctrl)
{
 uint32_t tmp;
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);


 tmp = readl(SLC_CFG(host->io_base));
 if (ctrl & NAND_NCE)
  tmp |= SLCCFG_CE_LOW;
 else
  tmp &= ~SLCCFG_CE_LOW;
 writel(tmp, SLC_CFG(host->io_base));

 if (cmd != NAND_CMD_NONE) {
  if (ctrl & NAND_CLE)
   writel(cmd, SLC_CMD(host->io_base));
  else
   writel(cmd, SLC_ADDR(host->io_base));
 }
}
