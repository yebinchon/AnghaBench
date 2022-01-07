
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon_ctl {int page_size; int n_refused_pages; int refused_pages; } ;
struct vmballoon {int dummy; } ;


 int VMW_BALLOON_PAGE_STAT_REFUSED_FREE ;
 int vmballoon_release_page_list (int *,int *,int ) ;
 int vmballoon_stats_page_inc (struct vmballoon*,int ,int ) ;

__attribute__((used)) static void vmballoon_release_refused_pages(struct vmballoon *b,
         struct vmballoon_ctl *ctl)
{
 vmballoon_stats_page_inc(b, VMW_BALLOON_PAGE_STAT_REFUSED_FREE,
     ctl->page_size);

 vmballoon_release_page_list(&ctl->refused_pages, &ctl->n_refused_pages,
        ctl->page_size);
}
