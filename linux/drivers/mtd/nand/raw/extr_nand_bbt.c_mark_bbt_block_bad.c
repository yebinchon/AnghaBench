
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int bbt_erase_shift; } ;
struct nand_bbt_descr {int* pages; } ;
typedef int loff_t ;


 int BBT_BLOCK_WORN ;
 int bbt_mark_entry (struct nand_chip*,int,int ) ;
 int nand_markbad_bbm (struct nand_chip*,int) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static void mark_bbt_block_bad(struct nand_chip *this,
          struct nand_bbt_descr *td,
          int chip, int block)
{
 loff_t to;
 int res;

 bbt_mark_entry(this, block, BBT_BLOCK_WORN);

 to = (loff_t)block << this->bbt_erase_shift;
 res = nand_markbad_bbm(this, to);
 if (res)
  pr_warn("nand_bbt: error %d while marking block %d bad\n",
   res, block);

 td->pages[chip] = -1;
}
