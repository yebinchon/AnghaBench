
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int bbt_options; unsigned long long phys_erase_shift; scalar_t__ bbt; } ;
struct TYPE_2__ {int badblocks; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
struct erase_info {unsigned long long len; int addr; } ;
typedef int loff_t ;
typedef int einfo ;


 int NAND_BBT_NO_OOB_BBM ;
 int memset (struct erase_info*,int ,int) ;
 int nand_erase_nand (struct nand_chip*,struct erase_info*,int ) ;
 int nand_get_device (struct nand_chip*) ;
 int nand_markbad_bbm (struct nand_chip*,int ) ;
 int nand_markbad_bbt (struct nand_chip*,int ) ;
 int nand_release_device (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int nand_block_markbad_lowlevel(struct nand_chip *chip, loff_t ofs)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int res, ret = 0;

 if (!(chip->bbt_options & NAND_BBT_NO_OOB_BBM)) {
  struct erase_info einfo;


  memset(&einfo, 0, sizeof(einfo));
  einfo.addr = ofs;
  einfo.len = 1ULL << chip->phys_erase_shift;
  nand_erase_nand(chip, &einfo, 0);


  ret = nand_get_device(chip);
  if (ret)
   return ret;

  ret = nand_markbad_bbm(chip, ofs);
  nand_release_device(chip);
 }


 if (chip->bbt) {
  res = nand_markbad_bbt(chip, ofs);
  if (!ret)
   ret = res;
 }

 if (!ret)
  mtd->ecc_stats.badblocks++;

 return ret;
}
