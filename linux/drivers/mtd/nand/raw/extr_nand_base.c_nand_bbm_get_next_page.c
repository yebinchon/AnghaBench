
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int page_shift; int pagemask; int options; } ;
struct mtd_info {int erasesize; int writesize; } ;


 int EINVAL ;
 int NAND_BBM_FIRSTPAGE ;
 int NAND_BBM_LASTPAGE ;
 int NAND_BBM_SECONDPAGE ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

int nand_bbm_get_next_page(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int last_page = ((mtd->erasesize - mtd->writesize) >>
    chip->page_shift) & chip->pagemask;

 if (page == 0 && chip->options & NAND_BBM_FIRSTPAGE)
  return 0;
 else if (page <= 1 && chip->options & NAND_BBM_SECONDPAGE)
  return 1;
 else if (page <= last_page && chip->options & NAND_BBM_LASTPAGE)
  return last_page;

 return -EINVAL;
}
