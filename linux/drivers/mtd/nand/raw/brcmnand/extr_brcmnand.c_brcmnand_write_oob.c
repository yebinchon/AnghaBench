
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nand_chip {int page_shift; int oob_poi; } ;


 int brcmnand_write (int ,struct nand_chip*,int,int *,int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_write_oob(struct nand_chip *chip, int page)
{
 return brcmnand_write(nand_to_mtd(chip), chip,
         (u64)page << chip->page_shift, ((void*)0),
         chip->oob_poi);
}
