
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;


 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 int raw_write (struct nand_chip*,int *,int ) ;

__attribute__((used)) static int tango_write_oob(struct nand_chip *chip, int page)
{
 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 raw_write(chip, ((void*)0), chip->oob_poi);
 return nand_prog_page_end_op(chip);
}
