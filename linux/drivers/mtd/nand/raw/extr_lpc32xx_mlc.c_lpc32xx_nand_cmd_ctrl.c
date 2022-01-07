
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int io_base; } ;


 int MLC_ADDR (int ) ;
 int MLC_CMD (int ) ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int writel (int,int ) ;

__attribute__((used)) static void lpc32xx_nand_cmd_ctrl(struct nand_chip *nand_chip, int cmd,
      unsigned int ctrl)
{
 struct lpc32xx_nand_host *host = nand_get_controller_data(nand_chip);

 if (cmd != NAND_CMD_NONE) {
  if (ctrl & NAND_CLE)
   writel(cmd, MLC_CMD(host->io_base));
  else
   writel(cmd, MLC_ADDR(host->io_base));
 }
}
