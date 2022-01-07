
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u_long ;
struct page {int dummy; } ;
struct block2mtd_dev {TYPE_2__* blkdev; } ;
struct address_space {int dummy; } ;
typedef size_t loff_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;


 scalar_t__ IS_ERR (struct page*) ;
 size_t PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int balance_dirty_pages_ratelimited (struct address_space*) ;
 int lock_page (struct page*) ;
 int memset (unsigned long*,int,int) ;
 unsigned long* page_address (struct page*) ;
 struct page* page_read (struct address_space*,int) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int _block2mtd_erase(struct block2mtd_dev *dev, loff_t to, size_t len)
{
 struct address_space *mapping = dev->blkdev->bd_inode->i_mapping;
 struct page *page;
 int index = to >> PAGE_SHIFT;
 int pages = len >> PAGE_SHIFT;
 u_long *p;
 u_long *max;

 while (pages) {
  page = page_read(mapping, index);
  if (IS_ERR(page))
   return PTR_ERR(page);

  max = page_address(page) + PAGE_SIZE;
  for (p=page_address(page); p<max; p++)
   if (*p != -1UL) {
    lock_page(page);
    memset(page_address(page), 0xff, PAGE_SIZE);
    set_page_dirty(page);
    unlock_page(page);
    balance_dirty_pages_ratelimited(mapping);
    break;
   }

  put_page(page);
  pages--;
  index++;
 }
 return 0;
}
