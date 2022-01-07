
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {int * root; int flags; } ;
struct mtdswap_dev {int dev; int mtd; int spare_eblks; } ;
typedef int loff_t ;


 int EBLOCK_BAD ;
 int dev_warn (int ,char*,int ,...) ;
 int mtd_block_markbad (int ,int ) ;
 int mtd_can_have_bb (int ) ;
 int mtdswap_eb_detach (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_eb_offset (struct mtdswap_dev*,struct swap_eb*) ;

__attribute__((used)) static int mtdswap_handle_badblock(struct mtdswap_dev *d, struct swap_eb *eb)
{
 int ret;
 loff_t offset;

 d->spare_eblks--;
 eb->flags |= EBLOCK_BAD;
 mtdswap_eb_detach(d, eb);
 eb->root = ((void*)0);


 if (!mtd_can_have_bb(d->mtd))
  return 1;

 offset = mtdswap_eb_offset(d, eb);
 dev_warn(d->dev, "Marking bad block at %08llx\n", offset);
 ret = mtd_block_markbad(d->mtd, offset);

 if (ret) {
  dev_warn(d->dev, "Mark block bad failed for block at %08llx "
   "error %d\n", offset, ret);
  return ret;
 }

 return 1;

}
