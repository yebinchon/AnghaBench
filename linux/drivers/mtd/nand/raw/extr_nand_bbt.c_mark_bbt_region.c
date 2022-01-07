
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int u64 ;
struct nand_chip {int bbt_erase_shift; int page_shift; int base; } ;
struct nand_bbt_descr {int options; int* pages; int maxblocks; scalar_t__ reserved_block_code; } ;
struct mtd_info {int size; } ;
typedef int loff_t ;


 scalar_t__ BBT_BLOCK_RESERVED ;
 int NAND_BBT_ABSPAGE ;
 int NAND_BBT_LASTBLOCK ;
 int NAND_BBT_PERCHIP ;
 int NAND_BBT_WRITE ;
 scalar_t__ bbt_get_entry (struct nand_chip*,int) ;
 int bbt_mark_entry (struct nand_chip*,int,scalar_t__) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_update_bbt (struct nand_chip*,int) ;
 int nanddev_ntargets (int *) ;
 int nanddev_target_size (int *) ;

__attribute__((used)) static void mark_bbt_region(struct nand_chip *this, struct nand_bbt_descr *td)
{
 u64 targetsize = nanddev_target_size(&this->base);
 struct mtd_info *mtd = nand_to_mtd(this);
 int i, j, chips, block, nrblocks, update;
 uint8_t oldval;


 if (td->options & NAND_BBT_PERCHIP) {
  chips = nanddev_ntargets(&this->base);
  nrblocks = (int)(targetsize >> this->bbt_erase_shift);
 } else {
  chips = 1;
  nrblocks = (int)(mtd->size >> this->bbt_erase_shift);
 }

 for (i = 0; i < chips; i++) {
  if ((td->options & NAND_BBT_ABSPAGE) ||
      !(td->options & NAND_BBT_WRITE)) {
   if (td->pages[i] == -1)
    continue;
   block = td->pages[i] >> (this->bbt_erase_shift - this->page_shift);
   oldval = bbt_get_entry(this, block);
   bbt_mark_entry(this, block, BBT_BLOCK_RESERVED);
   if ((oldval != BBT_BLOCK_RESERVED) &&
     td->reserved_block_code)
    nand_update_bbt(this, (loff_t)block <<
      this->bbt_erase_shift);
   continue;
  }
  update = 0;
  if (td->options & NAND_BBT_LASTBLOCK)
   block = ((i + 1) * nrblocks) - td->maxblocks;
  else
   block = i * nrblocks;
  for (j = 0; j < td->maxblocks; j++) {
   oldval = bbt_get_entry(this, block);
   bbt_mark_entry(this, block, BBT_BLOCK_RESERVED);
   if (oldval != BBT_BLOCK_RESERVED)
    update = 1;
   block++;
  }





  if (update && td->reserved_block_code)
   nand_update_bbt(this, (loff_t)(block - 1) <<
     this->bbt_erase_shift);
 }
}
