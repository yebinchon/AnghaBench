
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int GFP_KERNEL ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int pr_info (char*,...) ;

void lkdtm_READ_AFTER_FREE(void)
{
 int *base, *val, saw;
 size_t len = 1024;





 size_t offset = (len / sizeof(*base)) / 2;

 base = kmalloc(len, GFP_KERNEL);
 if (!base) {
  pr_info("Unable to allocate base memory.\n");
  return;
 }

 val = kmalloc(len, GFP_KERNEL);
 if (!val) {
  pr_info("Unable to allocate val memory.\n");
  kfree(base);
  return;
 }

 *val = 0x12345678;
 base[offset] = *val;
 pr_info("Value in memory before free: %x\n", base[offset]);

 kfree(base);

 pr_info("Attempting bad read from freed memory\n");
 saw = base[offset];
 if (saw != *val) {

  pr_info("Memory correctly poisoned (%x)\n", saw);
  BUG();
 }
 pr_info("Memory was not poisoned\n");

 kfree(val);
}
