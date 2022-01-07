
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct nand_chip {int options; } ;
struct mtd_info {unsigned int writesize; unsigned int oobsize; } ;


 int EINVAL ;
 int NAND_BUSWIDTH_16 ;
 scalar_t__ WARN_ON (unsigned int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int nand_fill_column_cycles(struct nand_chip *chip, u8 *addrs,
       unsigned int offset_in_page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);


 if (offset_in_page > mtd->writesize + mtd->oobsize)
  return -EINVAL;






 if (mtd->writesize <= 512 && offset_in_page >= mtd->writesize)
  offset_in_page -= mtd->writesize;





 if (chip->options & NAND_BUSWIDTH_16) {
  if (WARN_ON(offset_in_page % 2))
   return -EINVAL;

  offset_in_page /= 2;
 }

 addrs[0] = offset_in_page;





 if (mtd->writesize <= 512)
  return 1;

 addrs[1] = offset_in_page >> 8;

 return 2;
}
