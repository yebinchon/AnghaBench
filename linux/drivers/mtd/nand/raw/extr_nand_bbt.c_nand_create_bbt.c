
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int bbt_options; int badblock_pattern; int * bbt_md; int * bbt_td; } ;


 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;
 int bbt_main_descr ;
 int bbt_main_no_oob_descr ;
 int bbt_mirror_descr ;
 int bbt_mirror_no_oob_descr ;
 int nand_create_badblock_pattern (struct nand_chip*) ;
 int nand_scan_bbt (struct nand_chip*,int ) ;

int nand_create_bbt(struct nand_chip *this)
{
 int ret;


 if (this->bbt_options & NAND_BBT_USE_FLASH) {

  if (!this->bbt_td) {
   if (this->bbt_options & NAND_BBT_NO_OOB) {
    this->bbt_td = &bbt_main_no_oob_descr;
    this->bbt_md = &bbt_mirror_no_oob_descr;
   } else {
    this->bbt_td = &bbt_main_descr;
    this->bbt_md = &bbt_mirror_descr;
   }
  }
 } else {
  this->bbt_td = ((void*)0);
  this->bbt_md = ((void*)0);
 }

 if (!this->badblock_pattern) {
  ret = nand_create_badblock_pattern(this);
  if (ret)
   return ret;
 }

 return nand_scan_bbt(this, this->badblock_pattern);
}
