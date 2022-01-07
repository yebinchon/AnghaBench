
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct mtd_oob_ops {int len; int * oobbuf; int * datbuf; scalar_t__ ooblen; scalar_t__ ooboffs; int mode; } ;
struct mtd_info {scalar_t__ writesize; scalar_t__ oobsize; } ;
typedef int loff_t ;


 int MTD_OPS_PLACE_OOB ;
 int min (size_t,size_t) ;
 int mtd_is_bitflip_or_eccerr (int) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int mtd_read_oob (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int scan_read_oob(struct nand_chip *this, uint8_t *buf, loff_t offs,
    size_t len)
{
 struct mtd_info *mtd = nand_to_mtd(this);
 struct mtd_oob_ops ops;
 int res, ret = 0;

 ops.mode = MTD_OPS_PLACE_OOB;
 ops.ooboffs = 0;
 ops.ooblen = mtd->oobsize;

 while (len > 0) {
  ops.datbuf = buf;
  ops.len = min(len, (size_t)mtd->writesize);
  ops.oobbuf = buf + ops.len;

  res = mtd_read_oob(mtd, offs, &ops);
  if (res) {
   if (!mtd_is_bitflip_or_eccerr(res))
    return res;
   else if (mtd_is_eccerr(res) || !ret)
    ret = res;
  }

  buf += mtd->oobsize + mtd->writesize;
  len -= mtd->writesize;
  offs += mtd->writesize;
 }
 return ret;
}
