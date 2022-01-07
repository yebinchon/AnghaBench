
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int atmel_hsmc_nand_pmecc_read_pg (struct nand_chip*,int *,int,int,int) ;

__attribute__((used)) static int atmel_hsmc_nand_pmecc_read_page_raw(struct nand_chip *chip,
            u8 *buf, int oob_required,
            int page)
{
 return atmel_hsmc_nand_pmecc_read_pg(chip, buf, oob_required, page,
          1);
}
