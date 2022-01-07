
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int (* write_subpage ) (struct nand_chip*,scalar_t__,int,int const*,int,int) ;int (* write_page_raw ) (struct nand_chip*,int const*,int,int) ;int (* write_page ) (struct nand_chip*,int const*,int,int) ;} ;
struct nand_chip {int options; TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;


 int NAND_NO_SUBPAGE_WRITE ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int const*,int,int) ;
 int stub2 (struct nand_chip*,scalar_t__,int,int const*,int,int) ;
 int stub3 (struct nand_chip*,int const*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nand_write_page(struct nand_chip *chip, uint32_t offset,
      int data_len, const uint8_t *buf, int oob_required,
      int page, int raw)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int status, subpage;

 if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
  chip->ecc.write_subpage)
  subpage = offset || (data_len < mtd->writesize);
 else
  subpage = 0;

 if (unlikely(raw))
  status = chip->ecc.write_page_raw(chip, buf, oob_required,
        page);
 else if (subpage)
  status = chip->ecc.write_subpage(chip, offset, data_len, buf,
       oob_required, page);
 else
  status = chip->ecc.write_page(chip, buf, oob_required, page);

 if (status < 0)
  return status;

 return 0;
}
