
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u64 ;
struct nand_chip {int bbt_erase_shift; int base; } ;
struct nand_bbt_descr {int options; int * pages; } ;
struct mtd_info {int size; } ;


 int NAND_BBT_PERCHIP ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nanddev_ntargets (int *) ;
 int nanddev_target_size (int *) ;
 int read_bbt (struct nand_chip*,int *,int ,int,struct nand_bbt_descr*,int) ;

__attribute__((used)) static int read_abs_bbt(struct nand_chip *this, uint8_t *buf,
   struct nand_bbt_descr *td, int chip)
{
 struct mtd_info *mtd = nand_to_mtd(this);
 u64 targetsize = nanddev_target_size(&this->base);
 int res = 0, i;

 if (td->options & NAND_BBT_PERCHIP) {
  int offs = 0;
  for (i = 0; i < nanddev_ntargets(&this->base); i++) {
   if (chip == -1 || chip == i)
    res = read_bbt(this, buf, td->pages[i],
     targetsize >> this->bbt_erase_shift,
     td, offs);
   if (res)
    return res;
   offs += targetsize >> this->bbt_erase_shift;
  }
 } else {
  res = read_bbt(this, buf, td->pages[0],
    mtd->size >> this->bbt_erase_shift, td, 0);
  if (res)
   return res;
 }
 return 0;
}
