
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nand_chip {int dummy; } ;


 int nand_read_page_op (struct nand_chip*,int,int,int *,int) ;
 int toshiba_nand_benand_eccstatus (struct nand_chip*) ;

__attribute__((used)) static int
toshiba_nand_read_subpage_benand(struct nand_chip *chip, uint32_t data_offs,
     uint32_t readlen, uint8_t *bufpoi, int page)
{
 int ret;

 ret = nand_read_page_op(chip, page, data_offs,
    bufpoi + data_offs, readlen);
 if (ret)
  return ret;

 return toshiba_nand_benand_eccstatus(chip);
}
