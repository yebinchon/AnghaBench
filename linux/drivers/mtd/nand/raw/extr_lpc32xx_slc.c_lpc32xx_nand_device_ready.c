
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int io_base; } ;


 int SLCSTAT_NAND_READY ;
 int SLC_STAT (int ) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readl (int ) ;

__attribute__((used)) static int lpc32xx_nand_device_ready(struct nand_chip *chip)
{
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);
 int rdy = 0;

 if ((readl(SLC_STAT(host->io_base)) & SLCSTAT_NAND_READY) != 0)
  rdy = 1;

 return rdy;
}
