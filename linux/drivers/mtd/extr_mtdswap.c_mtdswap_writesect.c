
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {int active_count; } ;
struct mtdswap_dev {scalar_t__ spare_eblks; unsigned int* page_data; unsigned int pages_per_eblk; struct swap_eb* eb_data; int mtd_write_count; int * revmap; int sect_write_count; } ;
struct mtd_blktrans_dev {int dummy; } ;


 unsigned int BLOCK_MAX ;
 unsigned int BLOCK_UNDEF ;
 int ENOSPC ;
 scalar_t__ MIN_SPARE_EBLOCKS ;
 struct mtdswap_dev* MTDSWAP_MBD_TO_MTDSWAP (struct mtd_blktrans_dev*) ;
 int PAGE_UNDEF ;
 scalar_t__ header ;
 int mtdswap_store_eb (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_write_block (struct mtdswap_dev*,char*,unsigned long,unsigned int*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mtdswap_writesect(struct mtd_blktrans_dev *dev,
   unsigned long page, char *buf)
{
 struct mtdswap_dev *d = MTDSWAP_MBD_TO_MTDSWAP(dev);
 unsigned int newblock, mapped;
 struct swap_eb *eb;
 int ret;

 d->sect_write_count++;

 if (d->spare_eblks < MIN_SPARE_EBLOCKS)
  return -ENOSPC;

 if (header) {

  if (unlikely(page == 0))
   return 0;

  page--;
 }

 mapped = d->page_data[page];
 if (mapped <= BLOCK_MAX) {
  eb = d->eb_data + (mapped / d->pages_per_eblk);
  eb->active_count--;
  mtdswap_store_eb(d, eb);
  d->page_data[page] = BLOCK_UNDEF;
  d->revmap[mapped] = PAGE_UNDEF;
 }

 ret = mtdswap_write_block(d, buf, page, &newblock, 0);
 d->mtd_write_count++;

 if (ret < 0)
  return ret;

 eb = d->eb_data + (newblock / d->pages_per_eblk);
 d->page_data[page] = newblock;

 return 0;
}
