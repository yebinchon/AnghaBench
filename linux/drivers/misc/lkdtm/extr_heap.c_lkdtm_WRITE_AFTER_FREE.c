
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int pr_info (char*,...) ;

void lkdtm_WRITE_AFTER_FREE(void)
{
 int *base, *again;
 size_t len = 1024;





 size_t offset = (len / sizeof(*base)) / 2;

 base = kmalloc(len, GFP_KERNEL);
 if (!base)
  return;
 pr_info("Allocated memory %p-%p\n", base, &base[offset * 2]);
 pr_info("Attempting bad write to freed memory at %p\n",
  &base[offset]);
 kfree(base);
 base[offset] = 0x0abcdef0;

 again = kmalloc(len, GFP_KERNEL);
 kfree(again);
 if (again != base)
  pr_info("Hmm, didn't get the same memory range.\n");
}
