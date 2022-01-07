
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct page {int dummy; } ;
struct block2mtd_dev {TYPE_2__* blkdev; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;


 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int balance_dirty_pages_ratelimited (struct address_space*) ;
 int lock_page (struct page*) ;
 scalar_t__ memcmp (scalar_t__,int const*,int) ;
 int memcpy (scalar_t__,int const*,int) ;
 scalar_t__ page_address (struct page*) ;
 struct page* page_read (struct address_space*,int) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int _block2mtd_write(struct block2mtd_dev *dev, const u_char *buf,
  loff_t to, size_t len, size_t *retlen)
{
 struct page *page;
 struct address_space *mapping = dev->blkdev->bd_inode->i_mapping;
 int index = to >> PAGE_SHIFT;
 int offset = to & ~PAGE_MASK;
 int cpylen;

 while (len) {
  if ((offset+len) > PAGE_SIZE)
   cpylen = PAGE_SIZE - offset;
  else
   cpylen = len;
  len = len - cpylen;

  page = page_read(mapping, index);
  if (IS_ERR(page))
   return PTR_ERR(page);

  if (memcmp(page_address(page)+offset, buf, cpylen)) {
   lock_page(page);
   memcpy(page_address(page) + offset, buf, cpylen);
   set_page_dirty(page);
   unlock_page(page);
   balance_dirty_pages_ratelimited(mapping);
  }
  put_page(page);

  if (retlen)
   *retlen += cpylen;

  buf += cpylen;
  offset = 0;
  index++;
 }
 return 0;
}
