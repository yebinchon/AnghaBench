
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct swap_eb {int flags; int erase_count; } ;
struct mtdswap_oobdata {int magic; int count; } ;
struct mtdswap_dev {TYPE_1__* mtd; scalar_t__ oob_buf; } ;
struct mtd_oob_ops {int ooblen; int mode; int * datbuf; scalar_t__ ooboffs; scalar_t__ oobbuf; } ;
typedef int loff_t ;
struct TYPE_3__ {int oobavail; } ;


 int EBLOCK_NOMAGIC ;
 scalar_t__ MTDSWAP_MAGIC_CLEAN ;
 scalar_t__ MTDSWAP_MAGIC_DIRTY ;
 int MTDSWAP_SCANNED_BAD ;
 int MTDSWAP_SCANNED_BITFLIP ;
 int MTDSWAP_SCANNED_CLEAN ;
 int MTDSWAP_SCANNED_DIRTY ;
 int MTD_OPS_AUTO_OOB ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ mtd_block_isbad (TYPE_1__*,int ) ;
 scalar_t__ mtd_can_have_bb (TYPE_1__*) ;
 scalar_t__ mtd_is_bitflip (int) ;
 int mtdswap_eb_offset (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_read_oob (struct mtdswap_dev*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int mtdswap_read_markers(struct mtdswap_dev *d, struct swap_eb *eb)
{
 struct mtdswap_oobdata *data, *data2;
 int ret;
 loff_t offset;
 struct mtd_oob_ops ops;

 offset = mtdswap_eb_offset(d, eb);


 if (mtd_can_have_bb(d->mtd) && mtd_block_isbad(d->mtd, offset))
  return MTDSWAP_SCANNED_BAD;

 ops.ooblen = 2 * d->mtd->oobavail;
 ops.oobbuf = d->oob_buf;
 ops.ooboffs = 0;
 ops.datbuf = ((void*)0);
 ops.mode = MTD_OPS_AUTO_OOB;

 ret = mtdswap_read_oob(d, offset, &ops);

 if (ret && !mtd_is_bitflip(ret))
  return ret;

 data = (struct mtdswap_oobdata *)d->oob_buf;
 data2 = (struct mtdswap_oobdata *)
  (d->oob_buf + d->mtd->oobavail);

 if (le16_to_cpu(data->magic) == MTDSWAP_MAGIC_CLEAN) {
  eb->erase_count = le32_to_cpu(data->count);
  if (mtd_is_bitflip(ret))
   ret = MTDSWAP_SCANNED_BITFLIP;
  else {
   if (le16_to_cpu(data2->magic) == MTDSWAP_MAGIC_DIRTY)
    ret = MTDSWAP_SCANNED_DIRTY;
   else
    ret = MTDSWAP_SCANNED_CLEAN;
  }
 } else {
  eb->flags |= EBLOCK_NOMAGIC;
  ret = MTDSWAP_SCANNED_DIRTY;
 }

 return ret;
}
