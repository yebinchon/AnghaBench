
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct nand_bbt_descr {int dummy; } ;
struct mtd_oob_ops {int mode; int * datbuf; scalar_t__ ooboffs; int * oobbuf; int ooblen; } ;
struct mtd_info {int writesize; int oobsize; } ;
typedef scalar_t__ loff_t ;


 int MTD_OPS_PLACE_OOB ;
 scalar_t__ check_short_pattern (int *,struct nand_bbt_descr*) ;
 int mtd_is_bitflip_or_eccerr (int) ;
 int mtd_read_oob (struct mtd_info*,scalar_t__,struct mtd_oob_ops*) ;
 int nand_bbm_get_next_page (struct nand_chip*,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int scan_block_fast(struct nand_chip *this, struct nand_bbt_descr *bd,
      loff_t offs, uint8_t *buf)
{
 struct mtd_info *mtd = nand_to_mtd(this);

 struct mtd_oob_ops ops;
 int ret, page_offset;

 ops.ooblen = mtd->oobsize;
 ops.oobbuf = buf;
 ops.ooboffs = 0;
 ops.datbuf = ((void*)0);
 ops.mode = MTD_OPS_PLACE_OOB;

 page_offset = nand_bbm_get_next_page(this, 0);

 while (page_offset >= 0) {




  ret = mtd_read_oob(mtd, offs + (page_offset * mtd->writesize),
       &ops);

  if (ret && !mtd_is_bitflip_or_eccerr(ret))
   return ret;

  if (check_short_pattern(buf, bd))
   return 1;

  page_offset = nand_bbm_get_next_page(this, page_offset + 1);
 }

 return 0;
}
