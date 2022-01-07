
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {int dev; } ;
struct lpc32xx_nand_host {int io_base; int comp_controller; } ;


 int MLCISR_CONTROLLER_READY ;
 int MLC_ISR (int ) ;
 int NAND_STATUS_READY ;
 int cpu_relax () ;
 int dev_dbg (int *,char*) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int readb (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int lpc32xx_waitfunc_controller(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);

 if (readb(MLC_ISR(host->io_base)) & MLCISR_CONTROLLER_READY)
  goto exit;

 wait_for_completion(&host->comp_controller);

 while (!(readb(MLC_ISR(host->io_base)) &
   MLCISR_CONTROLLER_READY)) {
  dev_dbg(&mtd->dev, "Warning: Controller not ready.\n");
  cpu_relax();
 }

exit:
 return NAND_STATUS_READY;
}
