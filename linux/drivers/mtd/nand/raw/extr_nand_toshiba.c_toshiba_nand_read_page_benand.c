
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;


 int nand_read_page_raw (struct nand_chip*,int *,int,int) ;
 int toshiba_nand_benand_eccstatus (struct nand_chip*) ;

__attribute__((used)) static int
toshiba_nand_read_page_benand(struct nand_chip *chip, uint8_t *buf,
         int oob_required, int page)
{
 int ret;

 ret = nand_read_page_raw(chip, buf, oob_required, page);
 if (ret)
  return ret;

 return toshiba_nand_benand_eccstatus(chip);
}
