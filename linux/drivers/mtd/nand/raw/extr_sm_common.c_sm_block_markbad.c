
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_oob {int block_status; } ;
struct nand_chip {int dummy; } ;
struct mtd_oob_ops {scalar_t__ oobretlen; int * datbuf; void* oobbuf; int ooblen; scalar_t__ ooboffs; int mode; } ;
struct mtd_info {int oobsize; } ;
typedef scalar_t__ loff_t ;


 int EIO ;
 int MTD_OPS_PLACE_OOB ;
 scalar_t__ SM_OOB_SIZE ;
 int memset (struct sm_oob*,int,scalar_t__) ;
 int mtd_write_oob (struct mtd_info*,scalar_t__,struct mtd_oob_ops*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int pr_notice (char*,int) ;

__attribute__((used)) static int sm_block_markbad(struct nand_chip *chip, loff_t ofs)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mtd_oob_ops ops;
 struct sm_oob oob;
 int ret;

 memset(&oob, -1, SM_OOB_SIZE);
 oob.block_status = 0x0F;



 ops.mode = MTD_OPS_PLACE_OOB;
 ops.ooboffs = 0;
 ops.ooblen = mtd->oobsize;
 ops.oobbuf = (void *)&oob;
 ops.datbuf = ((void*)0);


 ret = mtd_write_oob(mtd, ofs, &ops);
 if (ret < 0 || ops.oobretlen != SM_OOB_SIZE) {
  pr_notice("sm_common: can't mark sector at %i as bad\n",
     (int)ofs);
  return -EIO;
 }

 return 0;
}
