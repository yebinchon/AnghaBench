
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nand_chip {int bbt_erase_shift; int page_shift; int base; } ;
struct nand_bbt_descr {int* pages; int options; int maxblocks; } ;




 int ENOSPC ;
 int NAND_BBT_LASTBLOCK ;
 int NAND_BBT_PERCHIP ;
 int bbt_get_entry (struct nand_chip*,int) ;
 int nanddev_ntargets (int *) ;
 int nanddev_target_size (int *) ;

__attribute__((used)) static int get_bbt_block(struct nand_chip *this, struct nand_bbt_descr *td,
    struct nand_bbt_descr *md, int chip)
{
 u64 targetsize = nanddev_target_size(&this->base);
 int startblock, dir, page, numblocks, i;






 if (td->pages[chip] != -1)
  return td->pages[chip] >>
    (this->bbt_erase_shift - this->page_shift);

 numblocks = (int)(targetsize >> this->bbt_erase_shift);
 if (!(td->options & NAND_BBT_PERCHIP))
  numblocks *= nanddev_ntargets(&this->base);





 if (td->options & NAND_BBT_LASTBLOCK) {
  startblock = numblocks * (chip + 1) - 1;
  dir = -1;
 } else {
  startblock = chip * numblocks;
  dir = 1;
 }

 for (i = 0; i < td->maxblocks; i++) {
  int block = startblock + dir * i;


  switch (bbt_get_entry(this, block)) {
  case 128:
  case 129:
   continue;
  }

  page = block << (this->bbt_erase_shift - this->page_shift);


  if (!md || md->pages[chip] != page)
   return block;
 }

 return -ENOSPC;
}
