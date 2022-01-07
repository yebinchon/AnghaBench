
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;


 int mxc_nand_write_page (struct nand_chip*,int const*,int,int) ;

__attribute__((used)) static int mxc_nand_write_page_ecc(struct nand_chip *chip, const uint8_t *buf,
       int oob_required, int page)
{
 return mxc_nand_write_page(chip, buf, 1, page);
}
