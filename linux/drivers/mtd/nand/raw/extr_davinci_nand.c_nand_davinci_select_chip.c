
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct TYPE_4__ {int IO_ADDR_W; int IO_ADDR_R; } ;
struct TYPE_3__ {TYPE_2__ legacy; } ;
struct davinci_nand_info {TYPE_1__ chip; int current_cs; scalar_t__ mask_chipsel; int vaddr; } ;


 int nand_to_mtd (struct nand_chip*) ;
 struct davinci_nand_info* to_davinci_nand (int ) ;

__attribute__((used)) static void nand_davinci_select_chip(struct nand_chip *nand, int chip)
{
 struct davinci_nand_info *info = to_davinci_nand(nand_to_mtd(nand));

 info->current_cs = info->vaddr;


 if (chip > 0)
  info->current_cs += info->mask_chipsel;

 info->chip.legacy.IO_ADDR_W = info->current_cs;
 info->chip.legacy.IO_ADDR_R = info->chip.legacy.IO_ADDR_W;
}
