
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;


 int micron_nand_on_die_ecc_setup (struct nand_chip*,int) ;
 int nand_write_page_raw (struct nand_chip*,int const*,int,int) ;

__attribute__((used)) static int
micron_nand_write_page_on_die_ecc(struct nand_chip *chip, const uint8_t *buf,
      int oob_required, int page)
{
 int ret;

 ret = micron_nand_on_die_ecc_setup(chip, 1);
 if (ret)
  return ret;

 ret = nand_write_page_raw(chip, buf, oob_required, page);
 micron_nand_on_die_ecc_setup(chip, 0);

 return ret;
}
