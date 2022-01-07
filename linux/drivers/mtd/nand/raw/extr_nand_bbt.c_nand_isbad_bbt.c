
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int bbt_erase_shift; } ;
typedef int loff_t ;





 int bbt_get_entry (struct nand_chip*,int) ;
 int pr_debug (char*,unsigned int,int,int) ;

int nand_isbad_bbt(struct nand_chip *this, loff_t offs, int allowbbt)
{
 int block, res;

 block = (int)(offs >> this->bbt_erase_shift);
 res = bbt_get_entry(this, block);

 pr_debug("nand_isbad_bbt(): bbt info for offs 0x%08x: (block %d) 0x%02x\n",
   (unsigned int)offs, block, res);

 switch (res) {
 case 130:
  return 0;
 case 128:
  return 1;
 case 129:
  return allowbbt ? 0 : 1;
 }
 return 1;
}
