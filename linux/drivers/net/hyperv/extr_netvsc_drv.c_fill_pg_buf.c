
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct page {int dummy; } ;
struct hv_page_buffer {unsigned long len; scalar_t__ offset; int pfn; } ;


 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int page_to_pfn (struct page*) ;

__attribute__((used)) static u32 fill_pg_buf(struct page *page, u32 offset, u32 len,
         struct hv_page_buffer *pb)
{
 int j = 0;




 page += (offset >> PAGE_SHIFT);
 offset &= ~PAGE_MASK;

 while (len > 0) {
  unsigned long bytes;

  bytes = PAGE_SIZE - offset;
  if (bytes > len)
   bytes = len;
  pb[j].pfn = page_to_pfn(page);
  pb[j].offset = offset;
  pb[j].len = bytes;

  offset += bytes;
  len -= bytes;

  if (offset == PAGE_SIZE && len) {
   page++;
   offset = 0;
   j++;
  }
 }

 return j + 1;
}
