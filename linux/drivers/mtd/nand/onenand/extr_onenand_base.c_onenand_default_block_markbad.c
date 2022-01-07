
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct onenand_chip {int badblockpos; struct bbm_info* bbm; } ;
struct mtd_oob_ops {int ooblen; int ooboffs; int * oobbuf; int mode; } ;
struct mtd_info {scalar_t__ oobsize; struct onenand_chip* priv; } ;
struct bbm_info {int* bbt; } ;
typedef int loff_t ;


 int MTD_OPS_PLACE_OOB ;
 int onenand_block (struct onenand_chip*,int ) ;
 int onenand_write_oob_nolock (struct mtd_info*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int onenand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 struct onenand_chip *this = mtd->priv;
 struct bbm_info *bbm = this->bbm;
 u_char buf[2] = {0, 0};
 struct mtd_oob_ops ops = {
  .mode = MTD_OPS_PLACE_OOB,
  .ooblen = 2,
  .oobbuf = buf,
  .ooboffs = 0,
 };
 int block;


 block = onenand_block(this, ofs);
        if (bbm->bbt)
                bbm->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);


        ofs += mtd->oobsize + (this->badblockpos & ~0x01);




 return onenand_write_oob_nolock(mtd, ofs, &ops);
}
