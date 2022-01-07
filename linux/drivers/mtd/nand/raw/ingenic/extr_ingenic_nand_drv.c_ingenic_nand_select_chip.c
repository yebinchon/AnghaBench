
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct ingenic_nfc {size_t selected; int dev; struct ingenic_nand_cs* cs; } ;
struct ingenic_nand_cs {int bank; } ;
struct TYPE_2__ {int controller; } ;
struct ingenic_nand {TYPE_1__ chip; } ;


 int jz4780_nemc_assert (int ,int ,int) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct ingenic_nand* to_ingenic_nand (int ) ;
 struct ingenic_nfc* to_ingenic_nfc (int ) ;

__attribute__((used)) static void ingenic_nand_select_chip(struct nand_chip *chip, int chipnr)
{
 struct ingenic_nand *nand = to_ingenic_nand(nand_to_mtd(chip));
 struct ingenic_nfc *nfc = to_ingenic_nfc(nand->chip.controller);
 struct ingenic_nand_cs *cs;


 if (chipnr == -1 && nfc->selected >= 0) {
  cs = &nfc->cs[nfc->selected];
  jz4780_nemc_assert(nfc->dev, cs->bank, 0);
 }

 nfc->selected = chipnr;
}
