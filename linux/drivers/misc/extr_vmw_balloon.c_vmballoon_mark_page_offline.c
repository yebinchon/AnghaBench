
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum vmballoon_page_size_type { ____Placeholder_vmballoon_page_size_type } vmballoon_page_size_type ;


 int __SetPageOffline (struct page*) ;
 int vmballoon_page_in_frames (int) ;

__attribute__((used)) static void
vmballoon_mark_page_offline(struct page *page,
       enum vmballoon_page_size_type page_size)
{
 int i;

 for (i = 0; i < vmballoon_page_in_frames(page_size); i++)
  __SetPageOffline(page + i);
}
