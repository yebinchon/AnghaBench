
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int io_base; } ;


 int MLCISR_CONTROLLER_READY ;
 int MLCISR_NAND_READY ;
 int MLC_ISR (int ) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readb (int ) ;

__attribute__((used)) static int lpc32xx_nand_device_ready(struct nand_chip *nand_chip)
{
 struct lpc32xx_nand_host *host = nand_get_controller_data(nand_chip);

 if ((readb(MLC_ISR(host->io_base)) &
      (MLCISR_CONTROLLER_READY | MLCISR_NAND_READY)) ==
     (MLCISR_CONTROLLER_READY | MLCISR_NAND_READY))
  return 1;

 return 0;
}
