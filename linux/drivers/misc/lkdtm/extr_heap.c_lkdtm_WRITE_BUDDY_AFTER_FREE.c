
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 unsigned long __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int memset (void*,int,int ) ;
 int pr_info (char*) ;
 int schedule () ;

void lkdtm_WRITE_BUDDY_AFTER_FREE(void)
{
 unsigned long p = __get_free_page(GFP_KERNEL);
 if (!p) {
  pr_info("Unable to allocate free page\n");
  return;
 }

 pr_info("Writing to the buddy page before free\n");
 memset((void *)p, 0x3, PAGE_SIZE);
 free_page(p);
 schedule();
 pr_info("Attempting bad write to the buddy page after free\n");
 memset((void *)p, 0x78, PAGE_SIZE);

 p = __get_free_page(GFP_KERNEL);
 free_page(p);
 schedule();
}
