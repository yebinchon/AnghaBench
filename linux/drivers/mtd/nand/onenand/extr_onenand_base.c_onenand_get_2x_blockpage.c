
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int erase_shift; int writesize; int page_shift; int page_mask; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef int loff_t ;



__attribute__((used)) static int onenand_get_2x_blockpage(struct mtd_info *mtd, loff_t addr)
{
 struct onenand_chip *this = mtd->priv;
 int blockpage, block, page;


 block = (int) (addr >> this->erase_shift) & ~1;

 if (addr & this->writesize)
  block++;
 page = (int) (addr >> (this->page_shift + 1)) & this->page_mask;
 blockpage = (block << 7) | page;

 return blockpage;
}
