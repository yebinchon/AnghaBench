
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int oob_poi; } ;


 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 int raw_write (struct nand_chip*,int const*,int ) ;

__attribute__((used)) static int tango_write_page_raw(struct nand_chip *chip, const u8 *buf,
    int oob_required, int page)
{
 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 raw_write(chip, buf, chip->oob_poi);
 return nand_prog_page_end_op(chip);
}
