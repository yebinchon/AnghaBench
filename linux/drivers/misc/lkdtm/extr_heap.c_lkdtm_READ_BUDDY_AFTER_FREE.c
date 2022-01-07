
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int GFP_KERNEL ;
 unsigned long __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int pr_info (char*,...) ;

void lkdtm_READ_BUDDY_AFTER_FREE(void)
{
 unsigned long p = __get_free_page(GFP_KERNEL);
 int saw, *val;
 int *base;

 if (!p) {
  pr_info("Unable to allocate free page\n");
  return;
 }

 val = kmalloc(1024, GFP_KERNEL);
 if (!val) {
  pr_info("Unable to allocate val memory.\n");
  free_page(p);
  return;
 }

 base = (int *)p;

 *val = 0x12345678;
 base[0] = *val;
 pr_info("Value in memory before free: %x\n", base[0]);
 free_page(p);
 pr_info("Attempting to read from freed memory\n");
 saw = base[0];
 if (saw != *val) {

  pr_info("Memory correctly poisoned (%x)\n", saw);
  BUG();
 }
 pr_info("Buddy page was not poisoned\n");

 kfree(val);
}
