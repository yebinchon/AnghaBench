
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int options; int controller; } ;
struct mtd_info {int writesize; } ;
struct TYPE_2__ {int* addrs; int naddrs; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ op; } ;


 int NAND_ROW_ADDR_3 ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static void atmel_nfc_set_op_addr(struct nand_chip *chip, int page, int column)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_hsmc_nand_controller *nc;

 nc = to_hsmc_nand_controller(chip->controller);

 if (column >= 0) {
  nc->op.addrs[nc->op.naddrs++] = column;




  if (mtd->writesize > 512)
   nc->op.addrs[nc->op.naddrs++] = column >> 8;
 }

 if (page >= 0) {
  nc->op.addrs[nc->op.naddrs++] = page;
  nc->op.addrs[nc->op.naddrs++] = page >> 8;

  if (chip->options & NAND_ROW_ADDR_3)
   nc->op.addrs[nc->op.naddrs++] = page >> 16;
 }
}
