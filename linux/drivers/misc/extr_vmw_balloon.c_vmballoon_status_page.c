
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmballoon {struct page* page; TYPE_1__* batch_page; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned long status; int pfn; } ;


 unsigned long VMW_BALLOON_SUCCESS ;
 struct page* pfn_to_page (int ) ;
 scalar_t__ static_branch_likely (int *) ;
 int vmw_balloon_batching ;

__attribute__((used)) static unsigned long vmballoon_status_page(struct vmballoon *b, int idx,
        struct page **p)
{
 if (static_branch_likely(&vmw_balloon_batching)) {

  *p = pfn_to_page(b->batch_page[idx].pfn);
  return b->batch_page[idx].status;
 }


 *p = b->page;







 return VMW_BALLOON_SUCCESS;
}
