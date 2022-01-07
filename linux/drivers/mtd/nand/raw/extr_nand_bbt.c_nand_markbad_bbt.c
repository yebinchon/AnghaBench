
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int bbt_erase_shift; int bbt_options; } ;
typedef int loff_t ;


 int BBT_BLOCK_WORN ;
 int NAND_BBT_USE_FLASH ;
 int bbt_mark_entry (struct nand_chip*,int,int ) ;
 int nand_update_bbt (struct nand_chip*,int) ;

int nand_markbad_bbt(struct nand_chip *this, loff_t offs)
{
 int block, ret = 0;

 block = (int)(offs >> this->bbt_erase_shift);


 bbt_mark_entry(this, block, BBT_BLOCK_WORN);


 if (this->bbt_options & NAND_BBT_USE_FLASH)
  ret = nand_update_bbt(this, offs);

 return ret;
}
