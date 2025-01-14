
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {int flags; } ;
struct mtdswap_dev {scalar_t__ spare_eblks; } ;


 int EBLOCK_BITFLIP ;
 int EBLOCK_FAILED ;
 int EBLOCK_READERR ;
 int EIO ;
 int ENOSPC ;
 scalar_t__ MIN_SPARE_EBLOCKS ;
 int MTDSWAP_CLEAN ;
 int MTDSWAP_DIRTY ;
 int MTDSWAP_TYPE_CLEAN ;
 int mtd_is_eccerr (int) ;
 int mtdswap_eblk_passes (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_erase_block (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_gc_eblock (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_handle_badblock (struct mtdswap_dev*,struct swap_eb*) ;
 struct swap_eb* mtdswap_pick_gc_eblk (struct mtdswap_dev*,unsigned int) ;
 int mtdswap_rb_add (struct mtdswap_dev*,struct swap_eb*,int ) ;
 int mtdswap_write_marker (struct mtdswap_dev*,struct swap_eb*,int ) ;

__attribute__((used)) static int mtdswap_gc(struct mtdswap_dev *d, unsigned int background)
{
 struct swap_eb *eb;
 int ret;

 if (d->spare_eblks < MIN_SPARE_EBLOCKS)
  return 1;

 eb = mtdswap_pick_gc_eblk(d, background);
 if (!eb)
  return 1;

 ret = mtdswap_gc_eblock(d, eb);
 if (ret == -ENOSPC)
  return 1;

 if (eb->flags & EBLOCK_FAILED) {
  mtdswap_handle_badblock(d, eb);
  return 0;
 }

 eb->flags &= ~EBLOCK_BITFLIP;
 ret = mtdswap_erase_block(d, eb);
 if ((eb->flags & EBLOCK_READERR) &&
  (ret || !mtdswap_eblk_passes(d, eb)))
  return 0;

 if (ret == 0)
  ret = mtdswap_write_marker(d, eb, MTDSWAP_TYPE_CLEAN);

 if (ret == 0)
  mtdswap_rb_add(d, eb, MTDSWAP_CLEAN);
 else if (ret != -EIO && !mtd_is_eccerr(ret))
  mtdswap_rb_add(d, eb, MTDSWAP_DIRTY);

 return 0;
}
