
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon_batch_entry {int dummy; } ;
struct vmballoon {int batch_max_pages; int batch_page; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int page_address (struct page*) ;
 int static_branch_enable (int *) ;
 int vmw_balloon_batching ;

__attribute__((used)) static int vmballoon_init_batching(struct vmballoon *b)
{
 struct page *page;

 page = alloc_page(GFP_KERNEL | __GFP_ZERO);
 if (!page)
  return -ENOMEM;

 b->batch_page = page_address(page);
 b->batch_max_pages = PAGE_SIZE / sizeof(struct vmballoon_batch_entry);

 static_branch_enable(&vmw_balloon_batching);

 return 0;
}
