
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int bbt_erase_shift; } ;
typedef int loff_t ;


 scalar_t__ BBT_BLOCK_RESERVED ;
 scalar_t__ bbt_get_entry (struct nand_chip*,int) ;

int nand_isreserved_bbt(struct nand_chip *this, loff_t offs)
{
 int block;

 block = (int)(offs >> this->bbt_erase_shift);
 return bbt_get_entry(this, block) == BBT_BLOCK_RESERVED;
}
