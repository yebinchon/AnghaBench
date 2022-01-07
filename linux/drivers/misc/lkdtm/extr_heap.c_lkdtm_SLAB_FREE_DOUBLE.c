
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int double_free_cache ;
 int* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,int*) ;
 int pr_info (char*) ;

void lkdtm_SLAB_FREE_DOUBLE(void)
{
 int *val;

 val = kmem_cache_alloc(double_free_cache, GFP_KERNEL);
 if (!val) {
  pr_info("Unable to allocate double_free_cache memory.\n");
  return;
 }


 *val = 0x12345678;
 pr_info("Attempting double slab free ...\n");
 kmem_cache_free(double_free_cache, val);
 kmem_cache_free(double_free_cache, val);
}
