
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int atmel_nand_pmecc_write_pg (struct nand_chip*,int const*,int,int,int) ;

__attribute__((used)) static int atmel_nand_pmecc_write_page(struct nand_chip *chip, const u8 *buf,
           int oob_required, int page)
{
 return atmel_nand_pmecc_write_pg(chip, buf, oob_required, page, 0);
}
