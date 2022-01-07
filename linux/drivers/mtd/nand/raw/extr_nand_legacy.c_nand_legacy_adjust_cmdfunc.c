
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdfunc; } ;
struct nand_chip {TYPE_1__ legacy; } ;
struct mtd_info {int writesize; } ;


 scalar_t__ nand_command ;
 scalar_t__ nand_command_lp ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

void nand_legacy_adjust_cmdfunc(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);


 if (mtd->writesize > 512 && chip->legacy.cmdfunc == nand_command)
  chip->legacy.cmdfunc = nand_command_lp;
}
