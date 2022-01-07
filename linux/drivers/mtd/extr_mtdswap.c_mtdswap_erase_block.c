
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {scalar_t__ erase_count; } ;
struct mtdswap_dev {scalar_t__ max_erase_count; int dev; struct mtd_info* mtd; } ;
struct mtd_info {int name; int erasesize; } ;
struct erase_info {int addr; int len; } ;


 int EIO ;
 int MTDSWAP_ERASE_RETRIES ;
 int dev_err (int ,char*,int ,int ) ;
 int dev_warn (int ,char*,int ,int ) ;
 int memset (struct erase_info*,int ,int) ;
 int mtd_erase (struct mtd_info*,struct erase_info*) ;
 int mtdswap_eb_offset (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_handle_badblock (struct mtdswap_dev*,struct swap_eb*) ;
 int yield () ;

__attribute__((used)) static int mtdswap_erase_block(struct mtdswap_dev *d, struct swap_eb *eb)
{
 struct mtd_info *mtd = d->mtd;
 struct erase_info erase;
 unsigned int retries = 0;
 int ret;

 eb->erase_count++;
 if (eb->erase_count > d->max_erase_count)
  d->max_erase_count = eb->erase_count;

retry:
 memset(&erase, 0, sizeof(struct erase_info));
 erase.addr = mtdswap_eb_offset(d, eb);
 erase.len = mtd->erasesize;

 ret = mtd_erase(mtd, &erase);
 if (ret) {
  if (retries++ < MTDSWAP_ERASE_RETRIES) {
   dev_warn(d->dev,
    "erase of erase block %#llx on %s failed",
    erase.addr, mtd->name);
   yield();
   goto retry;
  }

  dev_err(d->dev, "Cannot erase erase block %#llx on %s\n",
   erase.addr, mtd->name);

  mtdswap_handle_badblock(d, eb);
  return -EIO;
 }

 return 0;
}
