
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int mtd_to_nand (struct mtd_info*) ;
 int nand_block_isbad (struct mtd_info*,int ) ;
 int nand_block_markbad_lowlevel (int ,int ) ;

__attribute__((used)) static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 int ret;

 ret = nand_block_isbad(mtd, ofs);
 if (ret) {

  if (ret > 0)
   return 0;
  return ret;
 }

 return nand_block_markbad_lowlevel(mtd_to_nand(mtd), ofs);
}
