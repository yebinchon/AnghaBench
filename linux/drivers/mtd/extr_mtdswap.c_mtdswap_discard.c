
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {int active_count; } ;
struct mtdswap_dev {unsigned int* page_data; unsigned int pages_per_eblk; int discard_page_count; int * revmap; struct swap_eb* eb_data; int discard_count; } ;
struct mtd_blktrans_dev {int dummy; } ;


 unsigned int BLOCK_ERROR ;
 unsigned int BLOCK_MAX ;
 void* BLOCK_UNDEF ;
 struct mtdswap_dev* MTDSWAP_MBD_TO_MTDSWAP (struct mtd_blktrans_dev*) ;
 int PAGE_UNDEF ;
 int mtdswap_store_eb (struct mtdswap_dev*,struct swap_eb*) ;

__attribute__((used)) static int mtdswap_discard(struct mtd_blktrans_dev *dev, unsigned long first,
   unsigned nr_pages)
{
 struct mtdswap_dev *d = MTDSWAP_MBD_TO_MTDSWAP(dev);
 unsigned long page;
 struct swap_eb *eb;
 unsigned int mapped;

 d->discard_count++;

 for (page = first; page < first + nr_pages; page++) {
  mapped = d->page_data[page];
  if (mapped <= BLOCK_MAX) {
   eb = d->eb_data + (mapped / d->pages_per_eblk);
   eb->active_count--;
   mtdswap_store_eb(d, eb);
   d->page_data[page] = BLOCK_UNDEF;
   d->revmap[mapped] = PAGE_UNDEF;
   d->discard_page_count++;
  } else if (mapped == BLOCK_ERROR) {
   d->page_data[page] = BLOCK_UNDEF;
   d->discard_page_count++;
  }
 }

 return 0;
}
